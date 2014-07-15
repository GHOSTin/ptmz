<?php namespace app\production;

use \RuntimeException;

class production{

  private $name;
  private $position;
  private $price;
  private $state;
  private $value;
  private $images = [];

  public function add_image($image){
    $this->images[] = $image;
  }

  public function delete_image($file){
    $key = array_search($file, $this->images, true);
    if($key === false)
      throw new RuntimeException();
    unset($this->images[$key]);
  }

  public function get_images(){
    return $this->images;
  }

  public function get_name(){
    return $this->name;
  }

  public function get_position(){
    return $this->position;
  }

  public function get_price(){
    return $this->price;
  }

  public function get_state(){
    return $this->state;
  }

  public function get_value(){
    return $this->value;
  }

  public function set_name($name){
    if(!preg_match('|^[а-яА-яёЁ0-9 .,()-]+$|u', $name))
      throw new DomainException();
    $this->name = (string) $name;
  }

  public function set_position($position){
    $this->position = (int) $position;
  }

  public function set_price($price){
    if(!preg_match('|^[а-яА-яёЁ0-9 .,()-/]+$|u', $price))
      throw new DomainException();
    $this->price = (string) $price;
  }

  public function set_state($state){
    if(!preg_match('|^[а-яА-яёЁ0-9 .,()-/]+$|u', $state))
      throw new DomainException();
    $this->state = (string) $state;
  }

  public function set_value($value){
    if(!preg_match('|^[а-яА-яёЁ0-9 .,]+$|u', $value))
      throw new DomainException();
    $this->value = (string) $value;
  }
}