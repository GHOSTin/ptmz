<?php namespace app\email;

class email{

  private $address;

  public function get_address(){
    return $this->address;
  }

  public function set_address($address){
    $this->address = (string) $address;
  }
}