<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class SendPaymentDocEmail extends Mailable
{
    use Queueable, SerializesModels;

    public $filePath;
    public $messages;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($filePath, $messages)
    {
        //
        $this->filePath = $filePath;
        $this->messages = $messages;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->view('emails.paymentdoc')
                    ->subject('Payment Detail')
                    ->attach(public_path() . "/" . $this->filePath);
    }   
}
