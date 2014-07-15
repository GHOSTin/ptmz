<?php namespace app\email;

class factory implements \boxxy\interfaces\factory{

  public function build(array $data){
    $email = new email();
    $email->set_address($data['address']);
    return $email;
  }
}