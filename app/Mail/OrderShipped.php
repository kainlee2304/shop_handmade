<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class OrderShipped extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     */

    public function __construct()
    {
      
    }

   
    public function build()
    {
        return $this->view('email.success');
                   
    }

  

  
   
}
