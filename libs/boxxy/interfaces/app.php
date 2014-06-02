<?php namespace boxxy\interfaces;

interface app{

  public function execute_before_request_block();

  public function execute_before_resolver_block();

  public function execute_before_view_block();

  public function execute_before_controller_block();

  public function fail_request_block();

  public function fail_resolver_block();

  public function fail_controller_block();

  public function fail_view_block();

  public function fail_run_block();

  public function get_request();

  public function get_resolver();

  public function get_view();
}