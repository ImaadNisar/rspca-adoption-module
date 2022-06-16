<?php 






    $connection = mysqli_connect("localhost","admin","imaad123","animalsforadoption");
    if (!$connection) {
        echo "Connection Failed!";
    }


    // 1. Construct SQL statement
    $sql = "SELECT * FROM animals 
            ORDER BY reserved ASC, name ASC";
    
    // 2. Apply SQL statement to db
    $result = mysqli_query($connection, $sql);

    // 3. Store result as associative array
    $animals = mysqli_fetch_all($result, MYSQLI_ASSOC);
    

    // frees result from mem and closes connection
    mysqli_free_result($result);
    mysqli_close($connection);

    



?>


<?php include("header.php"); ?>

<main>
    <div class="search-bar-container">
        <form action="index.php" method="POST">
            <input type="text" name="search" placeholder="Search" id="search-bar">
            <input type="submit" name="submit-search" value="" id="search-btn">
        </form>
    </div>

    <div class="animals-and-filters-container">

        <div class="sidebar">
        <div class="filters-container">
            <div class="filters-title">
                <h3>Filters</h3><!--
                --><div class="filter-svg"></div>
                <form action="index.php" method="POST" class="filters-list">
                    <div>
                        <label for="childfriendly">Child-friendly: </label>
                        <input type="checkbox" id="childfriendly" value="childfriendly">
                    </div>
                    <div>
                        <label for="reserved">Not Reserved: </label>
                        <input type="checkbox" id="reserved" value="notreserved">
                    </div>
                    <div>
                        <label for="sex" id="sex-title">Sex: </label>
                        <label for="sex">Male</label>
                        <input type="radio" value="male" name="sex">
                        <label for="sex">Female</label>
                        <input type="radio" value="female" name="sex">
                    </div>

                    <input type="submit" value="Filter" id="submit">
                </form>
            </div>
        </div>
        </div>

        <div class="animals-container">
            <?php foreach ($animals as $animal) { ?>
                <?php $src = $animal["Picture1"]; ?>
                <div class="whole-animal-container">
                    <?php if ($animal['Reserved']) {
                        echo "<a href='view.php'><div class='reserved-cover'>RESERVED</div></a>";
                    } ?>



                    <?php echo "<div class='animal-img'>"; ?>
                    <?php echo '<a href="view.php" class="img-link-view">'; ?>
                    <?php echo "<img src=$src>"; ?>
                    <?php echo '</a>'; ?>
                    <?php echo "</div>"; ?>
                        <div class="below-img-info">
                        <?php echo "<div class='animal-name'>{$animal['Name']}</div>"; ?>
                        <?php echo "<div class='animal-desc'>{$animal['Sex']} {$animal['Species']} - {$animal['Age']}</div>"; ?>
                        <?php if (!is_null($animal['Memo'])) {
                            echo "<div class='animal-memo'>{$animal['Memo']}</div>";
                        } ?>
                        </div>
                </div>
                

            <?php }; ?>
        </div>
    </div>
</main>

<?php include("footer.php"); ?>

