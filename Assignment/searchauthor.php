<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<link rel="shortcut icon" href="images/favicon(1).ico">
<title>Inspirational Quotes</title>
<link rel="stylesheet" type="text/css" href="assignment.css">

</head>

<body>

	<div id="wrapper">
        <div id="header">
        
        <h1>Search by Author</h1>
        <a href="menu.html">Index</a>
        <a href="Assignment.php">Home</a>
        <a href="showcategory.html">Search By Category</a>
        <a href="showauthor.html">Search By Author</a>
        <a href="allquotes.php">Quotes</a>
        
    	</div>
        <div id="sidebar">
            
            
            <p><h1>Add a Quote!</h1></p>
            
            <form method="get" action="upload.php">
            <label for="quotes">*Quote: </label>
            <br />
            <textarea name="quotes" cols="30" rows="5"  required id="quotes"></textarea>
            </p>
            <p>
            <label for="author">*Author: </label>
            <br />
            <input name="author" type="text" required id="author" placeholder="--Enter N/A if unknown--">
            </p>
            <p>
            <label for="book">*Book: </label>
            <br />
            <input name="book" type="text" required id="book" placeholder="--Enter N/A if unknown--">
            </p>
            <p>
            <p>Choose category:</p>
            <p>
              <select name = "category" id = "category">
                <option value = "Life">Life</option>
                <option value = "Love">Love</option>
                <option value = "Laughter">Laughter</option>
              </select>
              </p>
              <input type="submit" value="Upload File" />
            </p>
            <p>&nbsp;</p>
           </form>
        </div>
    <div id="main">
		<?php
        $servername="localhost";
        $username="khcy4cln_delyn";
        $password="Tiny3l3phant5";
        $dbname="khcy4cln_quotes";
        
        $submitAuthor = $_POST['author'];
        
        //create connection
        $conn = new mysqli($servername, $username, $password, $dbname);
        
        //check connection
        if($conn->connect_error)
        {
            die("connection failed: " . $conn->connect_error);
        }
        echo "<p>Quotes under $submitAuthor</p>";
        
        //sql query
        if(isset($submitAuthor))
        {
            $sql = "SELECT * FROM inspirational_quotes WHERE author LIKE '%".$submitAuthor."%'";
        $result = $conn->query($sql);
        }
        
        if($result->num_rows >0) 
        {
            //output data of each row
            while($row = $result->fetch_assoc())
            {
                $quoteID = $row['quoteID'];
                $quotes = $row['quotes'];
                $author = $row['author'];
                $book = $row['book'];
                $category = $row['category'];
                
                echo "<ul>";
                echo "Quote: <br>$quotes<br>";
                echo "Author: $author<br>";
                echo "Book: $book<br>";
                echo "Category: $category<br>";
                echo "<br>";
                echo "<img src=\"images/border.png\" margin=auto height=50px width=300px>";
                echo "<br></ul>";
                
            }
        }
        else
        {
            echo "No results";
        }
        $conn->close();
        
        ?>
    </div>
</div>

	<div id="footer">
    <p>
    &copy;G51WPS Choong Lee Lynn 2014
    </p>
    <br>
    </div>
</body>
</html>