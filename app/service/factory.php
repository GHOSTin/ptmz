<?php namespace app\service;

class factory implements \boxxy\interfaces\factory{

  public function build(array $data){
    $service = new service();
    $service->set_name($data['name']);
    $service->set_position($data['position']);
    if(!empty($data['rows']))
      foreach($data['rows'] as $row)
        $service->add_row($row);
    if(!empty($data['columns']))
      foreach($data['columns'] as $column)
        $service->add_column($column);
    return $service;
  }
}