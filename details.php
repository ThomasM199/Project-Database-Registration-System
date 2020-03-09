<?php
        $sql = "SELECT name, level, course, keywords, description, lecture, lecture_email, id  FROM project3";
        // check GET request id param
        if(isset($_GET['id'])){

                // escape sql chars
                $id = mysqli_real_escape_string($conn, $_GET['id']);

                // make sql
                $sql = "SELECT * FROM project3 WHERE id = $id";

                // get the query result
                $result = mysqli_query($conn, $sql);

                // fetch result in array format
                $project = mysqli_fetch_assoc($result);

                mysqli_free_result($result);
                mysqli_close($conn);
        }

?>

<!DOCTYPE html>
<html>
        <h1> Hi </h1>
        <?php include('header.php'); ?>

        <div class="container center">
                <?php if($project): ?>
                        <h4><?php echo htmlspecialchars($project['name']); ?></h4>
                        <p>Created by <?php echo ($project['description']); ?></p>
                        <p><?php echo date($project['keywords']); ?></p>
                        <h5>Ingredients:</h5>
                        <p><?php echo $project['level']; ?></p>
                <?php endif ?>
        </div>
        <?php include('footer.php'); ?>
