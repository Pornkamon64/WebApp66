<?php
    require 'conn.php';
    $sql = "SELECT * FROM products";
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
    <title>Products</title>
</head>

<body style="background-color: #FFFAF0;">
    <div class="container">
        <table style="margin-top: 20px;margin-down: 20px;">
                    <tr>
                    <th><a class="btn btn-light" href='mainmenu.php'>Products</a></th>
                    <th><a class="btn btn-info" href='mainmenuMB.php'>Members</a></th>
                    </tr>
        </table>
        <h1>Products</h1><br>
        
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col-4" style="width: 130px;">ชื่อเรื่อง</th>
                    <th scope="col-4">ราคา</th>
                    <th scope="col-4" style="width: 130px;">วันที่เข้าฉาย</th>
                    <th scope="col-4">เรื่องย่อ</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    if ($result->num_rows > 0) {
                        while($row = $result->fetch_assoc()) {
                            echo "<tr><td>".$row["pdid"]."</td>".
                            "<td>".$row["pdname"]."</td>".
                            "<td>".$row["price"]."</td>".
                            "<td>".$row["date"]."</td>".
                            "<td>".$row["detail"]."</td>".
                            "<td>"."<a class='btn btn-warning' href='editbio.php?pdid=".$row["pdid"]."'>Edit</a>"."</td>";
                            echo "</tr>";    
                        }
                    }else {
                        echo "0 results";
                    }
                    $conn->close();
                ?>
            </tbody>
        </table>
        <a class="btn btn-success" href='insertbio.php'>Insert Products</a>
    </div>
</body>

</html>