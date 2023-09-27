<?php
    require 'conn.php';
    $sql = "SELECT * FROM members";
    $result = $conn->query($sql);
    if(!$result){
        die("Error : ". $conn->$conn_error);
    }
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <title>Members</title>
</head>

<body style="background-color: #FFFAF0;">
    <div class="container">
        <table style="margin-top: 20px;margin-down: 20px;">
                    <tr>
                    <th><a class="btn btn-info" href='mainmenu.php'>Products</a></th>
                    <th><a class="btn btn-light" href='mainmenuMB.php'>Members</a></th>
                    </tr>
        </table>
        <h1>Members</h1><br>
        
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col-4" style="width: 130px;">ชื่อ</th>
                    <th scope="col-4">นามสกุล</th>
                    <th scope="col-4" style="width: 130px;">เบอร์โทรศัพท์</th>
                    <th scope="col-4">E-mail</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    if ($result->num_rows > 0) {
                        while($row = $result->fetch_assoc()) {
                            echo "<tr><td>".$row["mbid"]."</td>".
                            "<td>".$row["mbname"]."</td>".
                            "<td>".$row["mblastname"]."</td>".
                            "<td>".$row["telephone"]."</td>".
                            "<td>".$row["email"]."</td>".
                            "<td>"."<a class='btn btn-warning' href='editMB.php?mbid=".$row["mbid"]."'>Edit</a>"."</td>";
                            echo "</tr>";    
                        }
                    }else {
                        echo "0 results";
                    }
                    $conn->close();
                ?>
            </tbody>
        </table>
        <a class="btn btn-success" href='insertMB.php'>Insert Members</a>
    </div>
</body>
</html>