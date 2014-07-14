<?php namespace app\price;

class factory implements \boxxy\interfaces\factory{

  public function build(array $data){
    $price = new price();
    $price->set_name($data['name']);
    $price->set_position($data['position']);
    if(!empty($data['rows']))
      foreach($data['rows'] as $row)
        $price->add_row($row);
    if(!empty($data['columns']))
      foreach($data['columns'] as $column)
        $price->add_column($column);
    return $price;
  }
}