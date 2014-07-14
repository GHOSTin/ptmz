<?php namespace app\production\controllers;

use \boxxy\classes\controller;
use \boxxy\interfaces\request;
use \boxxy\classes\di;

class public_get_image extends controller{

  public function execute(request $request){
    $filename = $request->get_property('file');
    $file = di::get('images').DIRECTORY_SEPARATOR.$filename;
    $php = di::get('\app\php');
    if($php->file_exists($file)){
      $php->header('Content-type: image/jpeg');
      $php->header("Content-Length: ".$php->filesize($file));
      $php->readfile($file);
    }
    $php->quit();
  }
}