
<?php

        // connect to the database
        $conn = mysqli_connect('localhost', 'root', 'secure', 'database');

        // check connection
        if(!$conn){
                echo 'Connection error: '. mysqli_connect_error();
        }

        // write query for all pizzas
        $sql = 'SELECT name, level, course, keywords, description, lecture, lecture_email, id FROM project3';

        // get the result set (set of rows)
        $result = mysqli_query($conn, $sql);

        // fetch the resulting rows as an array
        $project = mysqli_fetch_all($result, MYSQLI_ASSOC);

        // free the $result from memory (good practise)
        mysqli_free_result($result);

        // close connection
        mysqli_close($conn);


?>

<!DOCTYPE html>
<html>

        <?php include('header.php'); ?>

        <h4 class="center grey-text">Project</h4>

        <div class="container">
                <div class="row">

                        <?php foreach($project as $project){ ?>

                                <div class="col s6 md3">
                                        <div class="card z-depth-0">
                                                <div class="card-content center">
                                                        <h6><?php echo htmlspecialchars($project['name']); ?></h6>
                                                        <div><?php echo htmlspecialchars($project['description']); ?></div>
                                                </div>
                                                <div class="card-action right-align">
                                                        <a class="brand-text" href="details.php?id=<?php echo $project['id'] ?>">more info</a>
                                                </div>
                                        </div>
                                </div>

                        <?php } ?>

                </div>
        </div>

        <?php include('footer.php'); ?>

</html>
