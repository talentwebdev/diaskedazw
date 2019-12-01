<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class SendProductPaymentEmail extends Mailable
{
    use Queueable, SerializesModels;

    public $messages;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($messages)
    {
        //
        $this->messages = $messages;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('emails.productpayment')
                    ->subject('Product Payment Detail')
                    ->attach(public_path() . "/" . $this->messages["productimg"]);
    }
}
