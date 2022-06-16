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
        <form action="search.php" method="POST">
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
                        <input type="checkbox" id="childfriendly">
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
                <?php echo '<a href="view.php">'; ?>
                <?php echo "<div class='animal-img'>"; ?>
                <?php echo "<img src=$src>"; ?>
                <?php echo "</div>"; ?>
                <?php echo '</a>'; ?>
            <?php }; ?>
        </div>
    </div>
</main>

<?php include("footer.php"); ?>

