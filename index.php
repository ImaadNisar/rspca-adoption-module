<?php

    session_start();

    


    include("dbconnect.php");

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

    $doSearch = False;
    $doFilter = False;

    if (isset($_POST["submit"]) && $_POST["search"] != "") {
        $doSearch = true;
    }

    if (isset($_GET["submit-filters"])) {
        $doFilter = true;
    }


?>


<?php include("header.php"); ?>

<?php if ($doSearch) { 

    $searchString = $_POST["search"];
    $searchString = htmlspecialchars($searchString);
    include("dbconnect.php");
    $sql = "SELECT * FROM animals WHERE name LIKE '%$searchString%' ORDER BY reserved ASC, name ASC";
    $result = mysqli_query($connection, $sql);
    $animals = mysqli_fetch_all($result, MYSQLI_ASSOC);
    mysqli_free_result($result);
    mysqli_close($connection);
    $length = count($animals);
?>
<h2 class="search-title">
    The search '<?php echo htmlspecialchars($searchString); ?>' returned <?php echo "$length" ?> <?php 
    if ($length === 1) {
        echo "result";
    }else {
        echo "results";
    }
    ?>  
</h2>
<?php } ?>


<?php 

if ($doFilter) {


    $sql = "SELECT * FROM animals";
    $empty = true;
    $queries = [];


    if (isset($_GET['sex'])) {
        if ($empty) {
            $sql .= " WHERE ";
            $empty = false;
            $queries[] = $_GET['sex'];
        }
        $sql .= " (Sex = '{$_GET['sex']}')";
    }

    if (isset($_GET['childfriendly'])) {
        if ($empty) {
            $sql .= " WHERE ";
            $empty = false;
        } else {
            $sql .= " AND ";
        }
        $queries[] = 'Childfriendly';
        $sql .= " (Childfriendly = 1)";
    }

    if (isset($_GET['notreserved'])) {
        if ($empty) {
            $sql .= " WHERE ";
            $empty = false;
        } else {
            $sql .= " AND ";
        }
        $queries[] = 'Not Reserved';
        $sql .= " (Reserved = 0)";

    }


    $species = [];

    if (isset($_GET['dogs'])) {
        $species[] = " Species = 'Dog'";
        $queries[] = 'Dogs';
    }
    if (isset($_GET['cats'])) {
        $species[] .= " Species = 'Cat'";
        $queries[] = 'Cats';
    }
    if (isset($_GET['rodents'])) {
        $species[] = " Species = 'Ferret' OR Species = 'Girbil'";
        $queries[] = 'Rodents';
    }
    if (isset($_GET['other'])) {
        $species[] = " Species = Species";
        $queries[] = 'Other';
    }

    if (count($species) >= 1) {
        if ($empty) {
            $sql .= " WHERE (";
        }
        else {
            $sql .= " AND (";
        }


        for ($i=0; $i<count($species); $i++) {
            $sql .= "{$species[$i]}";

            if ($i != count($species) - 1) {
                $sql .= " OR ";
            }
        }
        $sql .= " )";
    }
    


    


    include("dbconnect.php");
    $sql .= " ORDER BY reserved ASC, name ASC";


    $result = mysqli_query($connection, $sql);
    $animals = mysqli_fetch_all($result, MYSQLI_ASSOC) ;
    mysqli_free_result($result);
    mysqli_close($connection);
    echo "<div class='filter-top'>";
    
    foreach ($queries as $query) {
        echo "<span class='filter-top-indiv'> | $query </span>";
    }
    if (count($queries) > 0) {echo " |";};
    echo "</div>";
}



?>

<main>
    <div class="search-bar-container">
        <form action="index.php" method="POST">
            <input type="text" name="search" placeholder="Search" id="search-bar" maxlength="20">
            <input type="submit" name="submit" value="" id="search-btn">
        </form>
    </div>

    <div class="animals-and-filters-container">

        <div class="sidebar">
        <div class="filters-container">
            <div class="filters-title">
                <h3>Filters</h3><!--
                --><div class="filter-svg"></div>
                <form action="index.php" method="GET" class="filters-list">
                    <div>
                        <p>Sex:</p>
                        <label for="male">Male</label>
                        <input type="radio" value="Male" name="sex" id="male">
                        <label for="female">Female</label>
                        <input type="radio" value="Female" name="sex" id="female">
                    </div>
                    <hr>
                    <div class="species-filter">
                        <p>Species:</p>

                        <div>
                        <label for="dogs">Dogs:</label>
                        <input type="checkbox" value="true" name="dogs" id="dogs">
                        </div>

                        <div>
                        <label for="cats">Cats:</label>
                        <input type="checkbox" value="true" name="cats" id="cats">
                        </div>

                        <div>
                        <label for="rodents">Rodents:</label>
                        <input type="checkbox" value="true" name="rodents" id="rodents">
                        </div>

                        <div>                        
                        <label for="other">Other:</label>
                        <input type="checkbox" value="true" name="other" id="other">
                        </div>

                    </div>
                    <hr>
                    <div class="misc-filters">
                        <p>Other:</p>
                        <div>
                            <label for="childfriendly">Child-friendly: </label>
                            <input type="checkbox" id="childfriendly" value="true" name="childfriendly">
                        </div>
                        <div>
                            <label for="reserved">Not Reserved: </label>
                            <input type="checkbox" id="reserved" value="true" name="notreserved">
                        </div>
                    </div>
                    
                    
                    

                    <input type="submit" value="Filter" id="submit" name="submit-filters">
                </form>
            </div>
        </div>
        </div>


        <div class="animals-container animation">
            <?php foreach ($animals as $animal) { ?>
                <?php $src = $animal["Picture1"]; ?>
                <div class="whole-animal-container">
                    <?php if ($animal['Reserved']) { ?>
                        <a href="view.php?ID=<?php echo $animal['ID'];?>"><div class='reserved-cover'>RESERVED</div></a>

                    <?php } ?>



                    <?php echo "<div class='animal-img'>"; ?>
                    <a href="view.php?ID=<?php echo $animal['ID'];?>" class="img-link-view">




                    <?php echo "<img src=$src>"; ?>
                    </a>
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


<?php 

$_SESSION['views'] = array();
foreach ($animals as $animal) {
    $_SESSION['views'] += [$animal['ID'] => false];
}
?>


<?php include("footer.php"); ?>

