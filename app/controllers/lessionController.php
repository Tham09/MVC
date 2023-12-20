<?php
require_once APP_ROOT.'/app/services/lessionServices.php';
class lessionController{
    public function index(){

        $lessionService = new LessionService();
        $lessions = $lessionService->getAllLessions();

        include APP_ROOT.'/app/views/index/lession_view.php';
    }
}