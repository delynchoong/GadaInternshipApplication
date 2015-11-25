<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="images/favicon(1).ico">
<title>Inspirational Quotes</title>
<link rel="stylesheet" type="text/css" href="assignment.css">

</head>

<body>

	
	<div id="header">
    
        <h1>Inspirational Quotes</h1>
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
        
        //This is the directory where images will be saved
        $target = "pictures/";
        $target = $target . basename( $_FILES['userFile']['name']);
        
        $servername="localhost";
        $username="khcy4cln_delyn";
        $password="Tiny3l3phant5";
        $dbname="khcy4cln_quotes";
        
        //create connection
        $conn = new mysqli($servername,$username,$password,$dbname);
        
        
        //Writes the photo to the server
        if(move_uploaded_file($_FILES['userFile']['tmp_name'], $target))
        {
        
        //Tells you if its all ok
        echo "The file ". basename( $_FILES['uploadedfile']['name']). " has been uploaded";
        }
        else {
        
        //Gives and error if its not
        echo "Sorry, there was a problem uploading your file.";
        }
        $conn->close();
        
        ?>
    </div>

    <div id="footer">
    <p>
    &copy;G51WPS Choong Lee Lynn 2014
    </p>
    <br>
    </div>
</body>
</html>