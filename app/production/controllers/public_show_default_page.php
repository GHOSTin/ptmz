<?php namespace app\production\controllers;

use \boxxy\classes\controller;
use \boxxy\interfaces\request;
use \boxxy\classes\di;

class public_show_default_page extends controller{

  public function execute(request $request){
    return ['productions' => di::get('\app\production\mapper')->find_all()];
  }
}