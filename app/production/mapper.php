<?php namespace app\production;

use \PDO;
use \RuntimeException;
use \boxxy\classes\mapper_pdo;
use \boxxy\classes\di;

class mapper extends mapper_pdo{

  private static $find_all = "SELECT * FROM productions";

  public function find_all(){
    $stmt = $this->pdo->prepare(self::$find_all);
    if(!$stmt->execute())
      throw new RuntimeException();
    $prices = [];
    $factory = di::get('\app\production\factory');
    while($row = $stmt->fetch()){
      if(strlen($row['images']) > 0)
        $row['images'] = explode(';', $row['images']);
      else
        $row['images'] = [];
      $prices[] = $factory->build($row);
    }
    return $prices;
  }
}