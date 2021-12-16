<?php
  // Sending header for JSON content
  header("Content-Type: application/json; charset=utf-8");

  // Parse GET argument for entries count
  if (isset($_GET["nb"])) {
    if (is_numeric($_GET["nb"])) {
      $nb_entries = $_GET["nb"];
      if ($nb_entries < 1) {
        die_with_error(400);
      }
    } else {
      die_with_error(400);
    }
  } else {
    $nb_entries = rand(30,50);
  }

  // Basic class for random JSON payload
  class Meteo {
    public $température;
    public $pression;
    public $humidité;

    public function __construct() {
      $this->température = round(rand(-12, 36) + (rand(0,99)/10),2);
      $this->pression = round(rand(1, 3) + (rand(0,99)/10),2);
      $this->humidité = round(rand(0, 99) + (rand(0,99)/10),2);
    }
  };

  // Creating datas
  $datas = [];
  for($i = 0;$i < $nb_entries;++$i) {
    $datas[] = new Meteo;
  }

  // Serving JSON to client
  die(json_encode($datas));

  // Functions
  function die_with_error(int $code) : void {
    http_response_code($code);
    die("[]");
  }
