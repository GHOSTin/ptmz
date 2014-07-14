<?php namespace app;

use \boxxy\classes\di;
use \PDO;
use \app\conf;

class app extends \boxxy\classes\app{

  public function execute_before_request_block(){
    date_default_timezone_set('Asia/Yekaterinburg');
    session_start();
    $pimple = new \Pimple;
    $pimple['pdo'] = $pimple->share(function($pimple){
      $pdo = new PDO('mysql:host='.conf::db_host.';dbname='.conf::db_name,
                      conf::db_user, conf::db_password);
      $pdo->exec("SET NAMES utf8");
      $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
      return $pdo;
    });
    $pimple['images'] = conf::images;
    $pimple['\app\php'] = function ($pimple) {
      return new \app\php();
    };
    $pimple['\app\price\model'] = function ($pimple) {
      return new \app\price\model();
    };
    $pimple['\app\price\factory'] = function ($pimple) {
      return new \app\price\factory();
    };
    $pimple['\app\price\mapper'] = function ($pimple) {
      return new \app\price\mapper($pimple['pdo']);
    };
    $pimple['\app\production\mapper'] = function ($pimple) {
      return new \app\production\mapper($pimple['pdo']);
    };
    $pimple['\app\production\model'] = function ($pimple) {
      return new \app\production\model();
    };
    $pimple['\app\production\factory'] = function ($pimple) {
      return new \app\production\factory();
    };
    $pimple['\app\service\factory'] = function ($pimple) {
      return new \app\service\factory();
    };
    $pimple['\app\service\mapper'] = function ($pimple) {
      return new \app\service\mapper($pimple['pdo']);
    };
    $pimple['\app\service\model'] = function ($pimple) {
      return new \app\service\model();
    };
    di::set_instance($pimple);
  }

  public function get_status(){
    return conf::status;
  }
}