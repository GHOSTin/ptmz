<?php
if (file_exists(__DIR__ . '/' . explode('?', $_SERVER['REQUEST_URI'], 2)[0]))
  return false;
else
  include_once 'index.php';