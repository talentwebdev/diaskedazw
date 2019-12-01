<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use App\PackageModel;
use App\NotificationModel;
use Illuminate\Support\Facades\Auth;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'first_name', 'last_name', 'address', 'city', 'country', 'points'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    protected $table = "users";

    /**
        * get statistics 
    */
    public function visitstatistics()
    {
        return $this->hasMany("\App\VisitStatisticModel", "partner_id", "id");
    }

    /**
        * get articles 
    */
    public function articles()
    {
        return $this->hasMany("\App\ArticleModel", "partner_id", "id");
    }

    /**
     * get Activated Package
     */
    public function package()
    {
        return $this->belongsTo("\App\PackageModel", "active_package", "id");
    }

    /**
     * get partner
     */
    public function partner()
    {
        return $this->hasOne("\App\PartnerModel", "partner_id", "id");
    }

    /**
     * get partner
     */
    public function subscription()
    {
        return $this->hasOne("\App\SubscriptionModel", "user_id", "id");
    }

    /**
     * get company subscription
     */
    public function companysubscription()
    {
        return $this->hasOne('\App\Modules\CompanyPartner\Models\CompanySubscriptionModel', 'user_id', 'id');
    }

    /**
     * relation one to many with video
     */
    public function videos()
    {
        return $this->hasMany('\App\VideoModel', "partner_id", "id");
    }

    /**
     * relation one to many with announce
     */
    public function announces()
    {
        return $this->hasMany('\App\AnnounceModel', "partner_id", "id");
    }

    /**
     * relation one to many with statistic
     */
    public function statistics()
    {
        return $this->hasMany('\App\StatisticModel', "partner_id", "id");
    }

    public function notifications()
    {
        return $this->hasMany("\App\NotificationModel", "sender_id", "id");
    }

    public function transactions()
    {
        return $this->hasMany("\App\TransactionModel", "buyer_id", "id");
    }
    
    public function company()
    {
        return $this->hasOne('App\CompanyModel', 'user_id', 'id');
    }

    /**
     * get video popular
     */
    public function getVideoPopular()
    {
        $popular = $this->videos()
                        ->get()
                        ->avg( 'popular' );
        return $popular;
    }

    /**
     * get article popular
     */
    public function getArticlePopular() {
        $popular = $this->articles()
                        ->get()
                        ->avg( 'popular' );
        return $popular;
    }

    /**
     * get personal popular
     */
    public function getPersonalPopular( ) {
        return ( $this->getVideoPopular() + $this->getArticlePopular() ) / 2;
    }

    /**
     * return ture if user type is user.
     */
    public function isUser() {
        return $this->type == 'user';
    }

    /**
     * return ture if user type is user.
     */
    public function isPartner() {
        return $this->type == 'partner';
    }

    /**
     * return true if user is activated.
     */
    public function isActivated()
    {
        /*
        $active_date = strtotime($this->active_date);
        
        $package = \App\PackageModel::find($this->active_package);
        
        if($package == NULL )    return false;
        
        $end_date = mktime(0, 0, 0, (date('m', $active_date) + $package["n_month"]), 
                                    date('d', $active_date), 
                                    date('y', $active_date));
        
        if($end_date > time())
            return true;
        return false;
        */
        return true;
        
    }

    public function isValidProfile()
    {
        return !($this->first_name == "" || $this->last_name == "" || $this->address == "" || $this->city == "" || $this->country == "");
    }

    
    /**
     * eshop subscribe scope
     */
    public function expiredSubscribe(){
        return $this->subscription()->get()->first() == null || $this->subscription()->get()->first()->isExpired();
    }
    public function getRestDayForSubscribe()
    {
        if($this->subscription()->get()->first() == null) return "";

        $subscribe = $this->subscription()->get()->first();
        
        $resttime = strtotime($subscribe->end_time) - time();

        $months = (int)($resttime / (60 * 60 * 24 * 30));
        $days = (int)(($resttime % (60 * 60 * 24 * 30)) / (60 * 60 * 24));
        $hours = (int)(($resttime % (60 * 60 * 24)) / (60 * 60));

        $str = "";
        if($months > 0)
            $str = $str . $months . " months ";
        if($days > 0)
            $str = $str . $days . " days ";
        if($hours > 0)
            $str = $str . $hours . " hours ";
        $str = $str . "left";
        return $str;
    }

    /**
     * company subscribe scope
     */
    public function expiredCompanySubscription()
    {
        return $this->companysubscription == null || $this->companysubscription->isExpired();
    }    
    public function getRestDayForCompanySubscribe()
    {
        if($this->companysubscription == null) return "";

        $subscribe = $this->companysubscription;
        
        $resttime = strtotime($subscribe->end_time) - time();

        $months = (int)($resttime / (60 * 60 * 24 * 30));
        $days = (int)(($resttime % (60 * 60 * 24 * 30)) / (60 * 60 * 24));
        $hours = (int)(($resttime % (60 * 60 * 24)) / (60 * 60));

        $str = "";
        if($months > 0)
            $str = $str . $months . " months ";
        if($days > 0)
            $str = $str . $days . " days ";
        if($hours > 0)
            $str = $str . $hours . " hours ";
        $str = $str . "left";
        return $str;
    }


    public function isActiveUserPage()
    {
        return (($this->type == "seller" || $this->type == "user"));
    }
    public function isActiveEshop()
    {
        return (($this->type == "seller" || $this->type == "company_partner"));
    }

    public function isActiveCompany()
    {
        return ($this->type == "company_partner");
    }
    public function isActivePartnerPage()
    {
        return (($this->type == "partner_seller" || $this->type == "partner" || $this->type == "partner_company_partner"));
    }

    public function getUserName()
    {
        if(strlen($this->name) > 7)
            return substr($this->name, 0, 7) . "...";
        else
            return $this->name;
    }
    /* --------------------------
    * Static
    * ----------------------------- */
    /**
     * @param partnerid
     * @param type
     */
    public static function addEllinPoints($partnerid, $type)
    {
        $partner = User::find($partnerid);
        $points = 0;

        if($type == "star")
            $points = 0.02;
        else if($type == "clap")
            $points = 0.03;
        else if($type == "heart")
            $points = 0.04;
        else if($type == "readmore")
            $points = 0.01;
        else if($type == "visit")
            $points = 0.01;

        if($partner != null)
        {
            $partner->points += $points;
            $partner->save();
        }
        

        // Add Notification
        if(Auth::user() != null)
            NotificationModel::addNotification(Auth::user()->id, 
                                            $partnerid, 
                                            0,
                                            "Add Points",
                                            "Added " . $points,
                                            "add_points",
                                            1 );
    }

    public static function becomeCompanyPartner($id)
    {
        $user = self::find($id);
        if($user == null) return 0;

        if($user->points < 1500)
            return 0;
            
        if($user->type == "partner")
            $user->type = "partner_company_partner";
        else 
            $user->type = "company_partner";
        $user->points -= 1500;
        $user->save();
        return 1;
    }
}
