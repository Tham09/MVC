<?php
require_once APP_ROOT.'/app/models/lession_model.php';
class LessionService{
    public function getAllLessions(){
        $dbConnection = new DBConnection();
        $conn = $dbConnection->getConnection();

        if ($conn != null){
            $sql = "SELECT * FROM lessons";
            $stmt = $conn->query($sql);

            $users = [];
            while ($row = $stmt->fetch()){
                $lession = new Lession($row['id'], $row['title'], $row['description']);
                $lessions[] = $lession;
            }
            return $users;
        }
    }
}