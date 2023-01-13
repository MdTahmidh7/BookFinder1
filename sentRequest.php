<?php
session_start();
if (empty($_SESSION['login'])) {
    header("Location: http://localhost/bookFinder/login.php");
}

include './nav1.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Received Request</title>
</head>
<body>
<h1 style="text-align:center;" class="mt-3">Sent Request</h1>
<?php
$conn = new mysqli('localhost', 'root', '', 'bookFinder');
if (!$conn) {
    echo "Can not connect to Database.";
}
// Fetching Profile name form the database
$temp = $_COOKIE["email"];
$sql1 = "SELECT roll FROM users where email = '" . $temp . "'";
$result = mysqli_query($conn, $sql1) or die("Query feild");
$row = mysqli_fetch_assoc($result);
$roll = $row['roll'];

?>

<div class="container" style="display:flex;flex-wrap:wrap;">
        <?php
            // Create a database Connection
            $conn = new mysqli('localhost', 'root', '', 'bookFinder');
            if (!$conn) {
                echo "Can not connect to Database.";
            }
            $query = "SELECT * FROM `request` WHERE request_from = '".$roll."'";
            $run_query = mysqli_query($conn, $query); //Run the query function
            $check_data = mysqli_num_rows($run_query) > 0;

            if ($check_data) {
                while ($row = mysqli_fetch_array($run_query)) {

        ?>
        <div class="col-md-3 px-2" >
            <div class="card mt-5">
                <div class="card-body" style="background: gainsboro;box-shadow: 5px 5px 8px darkgrey;">

                
                            <?php
                            $temp = $row['post_id'];
                            $status = $row['request_status'];

                            $conn = new mysqli('localhost', 'root', '', 'bookFinder');

                            $sql1 = "SELECT book_name FROM `post` WHERE post_id = '".$temp."'";
                            $result1 = mysqli_query($conn,$sql1) or die ("Query feild");
                            $row1 = mysqli_fetch_assoc($result1);
                            $book_name = $row1['book_name'];

                           
                            $sql2 = "SELECT * from request";
                            $result2 = mysqli_query($conn,$sql2) or die ("Query feild");
                            $row2 = mysqli_fetch_assoc($result2);
                            $request_status = $row2['request_status'];


                            $sql3 = "SELECT u.roll FROM `users` as u 
                            INNER JOIN post as p 
                            where p.user_id = u.id and p.book_name = '".$book_name."'";
                            $result3 = mysqli_query($conn,$sql3) or die ("Query feild");
                            $row3 = mysqli_fetch_assoc($result3);


                            $sql4 = "SELECT u.email FROM `users` as u 
                            INNER JOIN post as p 
                            where p.user_id = u.id and p.book_name = '".$book_name."'";
                            $result4 = mysqli_query($conn,$sql4) or die ("Query feild");
                            $row4 = mysqli_fetch_assoc($result4);


                            echo "<h2>Request to  : ". $row3['roll'] ."</h2>" ;
                            echo "<h2>Email to  : ". $row4['email'] ."</h2>";

                            ?>
                            <h4>Request for :  <?php echo $row1['book_name']  ?></h4>
                            <h4>Request status <?php echo  $row['request_status'] ?></h4>
                                <div>
                                  <form action="./backend/delateRequest.php" method="post">
                                        <?php 
                                       $x=$row['request_id'];
                                      echo "<button style= 'width: 80px;
                                      font-size: 16px;
                                      font-weight: 500'
                                      onclick = 'myFunction()'
                                       name='btn1' value = '$x'>Delete</button>"
                                        ?>
                                    </form>
                                </div>
                                <div>
                                  <form action="./chat.php" method="post">
                                        <?php 
                                       $to_email = $row4['email'];
                                       $_SESSION['to_email'] = $to_email;
                                      echo "<button style= 'width: 80px;
                                      font-size: 16px;
                                      font-weight: 500'
                                      onclick = 'myFunction()'
                                       >Chat</button>"
                                        ?>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php
                  }
                } else {
                    echo "No data found";
                }
            ?>
        </div>
</div>
</body>
</html>