<?php namespace app\service;

use \PDO;
use \RuntimeException;
use \boxxy\classes\mapper_pdo;
use \boxxy\classes\di;

class mapper extends mapper_pdo{

  private static $find_all = "SELECT * FROM services ORDER BY position";

  public function find_all(){
    $stmt = $this->pdo->prepare(self::$find_all);
    if(!$stmt->execute())
      throw new RuntimeException();
    $prices = [];
    $factory = di::get('\app\service\factory');
    while($row = $stmt->fetch()){
      $row['columns'] = explode(';', $row['columns']);
      $row['rows'] = json_decode($row['rows']);
      $prices[] = $factory->build($row);
    }
    return $prices;
  }
}