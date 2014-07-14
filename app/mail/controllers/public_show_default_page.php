<?php namespace app\mail\controllers;

use \boxxy\classes\controller;
use \boxxy\interfaces\request;
use \boxxy\classes\di;

class public_show_default_page extends controller{

  public function execute(request $request){
    $php = di::get('\app\php');
    $headers[] = "MIME-Version: 1.0";
    $headers[] = "Content-type: text/plain; charset=utf-8";
    $headers[] = 'From: '.$message = $request->get_property('email');
    $headers[] = 'X-Mailer: PHP/' . phpversion();
    $php->mail('nekrasov@mlsco.ru', 'Заявка',
              $message = $request->get_property('message'),
              implode("\r\n", $headers));
  }
}