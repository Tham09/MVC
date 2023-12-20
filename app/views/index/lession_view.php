<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employees Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>

<body>
    <div class="container">
        <div style="display: flex; justify-content: space-between;" class="my-3">
            <h3 class = "text-center text-uppercase text-success">List Of Lession </h3>
            <a href="<?=DOMAIN.'app/views/employees/add.php'?>" class="btn btn-success">Add New lession</a>
        </div>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Title</th>
                    <th scope="col">Description</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                foreach ($lessions as $lession) {
                    ?>
                    <tr>
                        <th scope="row"><?= $lession->getId() ?></th>
                        <td><?= $lession->getTitle() ?></td>
                        <td><?= $lession->getDescription() ?></td>
                        <td>
                        <a href="<?=DOMAIN.'app/views/lession/viewLession.php?id='.$lession->getId()?>"><i class="bi bi-eye"></i></a>
                        <a href="<?=DOMAIN.'app/views/lession/editLession.php?id='.$lession->getId()?>"><i class="bi bi-pencil"></i></a>
                        <a href="<?=DOMAIN.'app/views/lession/removeLession.php?id='.$lession->getId()?>"><i class="bi bi-trash"></i></a>
                        </td>

                    </tr>
                    <?php
                }
                ?>

            </tbody>
        </table>
    </div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
</body>

</html>