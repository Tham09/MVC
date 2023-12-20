<?php
require_once APP_ROOT.'/app/services/studentServices.php';
class HomeController{
    public function index(){

        $userService = new UserService();
        $users = $userService->getAllUsers();

        include APP_ROOT.'/app/views/index/student_view.php';
    }
}