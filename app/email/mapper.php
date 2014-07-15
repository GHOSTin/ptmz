<?php namespace app\email;

use \PDO;
use \RuntimeException;
use \boxxy\classes\mapper_pdo;
use \boxxy\classes\di;

class mapper extends mapper_pdo{

  private static $find_all = "SELECT * FROM emails ORDER BY address";

  public function find_all(){
    $stmt = $this->pdo->prepare(self::$find_all);
    if(!$stmt->execute())
      throw new RuntimeException();
    $emails = [];
    $factory = di::get('\app\email\factory');
    while($row = $stmt->fetch()){
      $emails[] = $factory->build($row);
    }
    return $emails;
  }
}