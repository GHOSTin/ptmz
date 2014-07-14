<?php namespace app\service;

class service{

  private $columns = [];
  private $name;
  private $position;
  private $rows = [];

  public function add_column($column){
    $this->columns[] = (string) $column;
  }

  public function clear_columns(){
    $this->columns = [];
  }

  public function delete_row($position){
    unset($this->rows[$position]);
  }

  public function get_columns(){
    return $this->columns;
  }

  public function get_name(){
    return $this->name;
  }

  public function get_position(){
    return $this->position;
  }

  public function get_row($position){
    if(isset($this->rows[$position]))
      return $this->rows[$position];
    else
      return null;
  }

  public function get_rows(){
    return $this->rows;
  }

  public function add_row(array $row){
    $this->rows[] = $row;
  }

  public function set_name($name){
    $this->name = (string) $name;
  }

  public function set_position($position){
    $this->position = (int) $position;
  }

  public function set_row($position, $row){
    $this->rows[$position] = $row;
  }
}