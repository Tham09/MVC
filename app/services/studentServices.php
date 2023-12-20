<?php
require_once APP_ROOT.'/app/models/student_model.php';
class UserService{
    public function getAllUsers(){
        $dbConnection = new DBConnection();
        $conn = $dbConnection->getConnection();

        if ($conn != null){
            $sql = "SELECT * FROM users";
            $stmt = $conn->query($sql);

            $users = [];
            while ($row = $stmt->fetch()){
                $user = new User($row['id'], $row['name'], $row['email']);
                $users[] = $user;
            }
            return $users;
        }
    }
}