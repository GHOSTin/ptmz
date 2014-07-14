<?php namespace app\services\controllers;

use \boxxy\classes\controller;
use \boxxy\interfaces\request;
use \boxxy\classes\di;

class public_show_default_page extends controller{

  public function execute(request $request){
    return ['services' => di::get('\app\service\mapper')->find_all()];
  }
}