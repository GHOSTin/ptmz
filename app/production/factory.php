<?php namespace app\production;

class factory implements \boxxy\interfaces\factory{

  public function build(array $data){
    $production = new production();
    $production->set_name($data['name']);
    $production->set_state($data['state']);
    $production->set_value($data['value']);
    $production->set_price($data['price']);
    $production->set_position($data['position']);
    if(!empty($data['images']))
      foreach($data['images'] as $image)
        $production->add_image($image);
    return $production;
  }
}