<?php namespace boxxy\classes;

class app implements \boxxy\interfaces\app{

  public function execute_before_request_block(){}

  public function execute_before_resolver_block(){}

  public function execute_before_view_block(){}

  public function execute_before_controller_block(){}

  public function fail_request_block(){
    die('Error execute request block');
  }

  public function fail_resolver_block(){
    die('Error execute resolver block');
  }

  public function fail_controller_block(){
    die('Error execute controller block');
  }

  public function fail_view_block(){
    die('Error execute view block');
  }

  public function fail_run_block(){
    die('ERROR!!!');
  }

  public function get_request(){
    return new \boxxy\classes\request();
  }

  public function get_resolver(){
    return new \boxxy\classes\resolver(
                  new \app\errors\controllers\error404());
  }

  public function get_view(){
    return new \boxxy\classes\view();
  }
}
