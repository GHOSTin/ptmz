<?php namespace app;

use \DomainException;

class item{

  protected $columns = [];
  protected $name;
  protected $position;
  protected $rows = [];

  public function add_column($column){
    if(!preg_match('|^[а-яА-яёЁ0-9 .,()-/]+$|u', $column))
      throw new DomainException();
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
    if(!empty($row))
      foreach($row as $text)
        if(!preg_match('|^[а-яА-яёЁ0-9 .,()-/]+$|u', $text))
          throw new DomainException();
    $this->rows[] = $row;
  }

  public function set_name($name){
    if(!preg_match('|^[а-яА-яёЁ0-9 .,()-]+$|u', $name))
      throw new DomainException();
    $this->name = (string) $name;
  }

  public function set_position($position){
    $this->position = (int) $position;
  }

  public function set_row($position, $row){
    $this->rows[$position] = $row;
  }
}