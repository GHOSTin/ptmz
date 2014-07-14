<?php namespace app\price\controllers;

use \boxxy\classes\controller;
use \boxxy\classes\di;
use \boxxy\interfaces\request;

class public_show_default_page extends controller{

  public function execute(request $request){
    return ['prices' => di::get('\app\price\mapper')->find_all()];
  }
}