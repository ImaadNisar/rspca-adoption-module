<?php 
    include("dbconnect.php");

    if (isset($_GET['ID'])) {
        $id = mysqli_real_escape_string($connection, $_GET["ID"]);
        $sql = "SELECT * FROM animals WHERE ID = '$id'";

        $result = mysqli_query($connection, $sql);

        $animal = mysqli_fetch_assoc($result);

        mysqli_free_result($result);
        mysqli_close($connection);
        
        
    }
?>



<?php include("header.php"); ?>
<main class="single-animal-container">

    <?php $images = []; ?>
    <?php for ($i=1; $i<=5; $i++) { ?>
        <?php $curPic = $animal['Picture' . "$i"]; ?>
        <?php if (!($curPic === NULL)) { ?>
            <?php $images[] = $curPic;?>
        <?php } ?>
    <?php }; ?>


    <div class="images-container">
        <?php foreach ($images as $image) {?>
            <img src='<?php echo "$image"; ?>' class="single-image">
        <?php }; ?>
    </div>

    <div class="animal-information">
        <h2><?php echo "{$animal['Name']}"; ?></h2>
        <h3><?php echo "{$animal['Sex']} {$animal['Species']} - {$animal['Age']}"; ?></h3>
        <p class="desc"><?php echo "{$animal['LongDescription']}"; ?></p>
        <?php
        $x = "";
        if ($animal['Sex'] === "Male") {
            $x = "he";
        }
        else {
            $x = "she";
        }
        ?>
        <?php if (!$animal['Reserved']) {?>
        <b><p><?php echo "To give {$animal['Name']} the loving home that $x deserves, please fill out the application form below"; ?></p></b>
        <a href="https://www.rspca.org.uk/webContent/staticImages/findapet/applications/DOG.pdf">
        <div class="form-btn">
            Application Form
        </div>
        </a>
        <?php }else{ ?>
            <b><p style="color:red">It looks like <?php echo $animal['Name']?> has been reserved</p></b>
        <?php } ?>
    </div>

</main>



<?php include("footer.php"); ?>