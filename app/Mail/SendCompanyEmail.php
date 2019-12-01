<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class SendCompanyEmail extends Mailable
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
        return $this->view('emails.company')->subject('company contact');
                    //->attach(public_path() . "/online-course1.jpg");
    }
}
