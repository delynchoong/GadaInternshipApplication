<?php

	$root = '';
	$path = 'pictures/';
	 
	function getImagesFromDir($path) {
		$images = array();
		if ( $img_dir = @opendir($path) ) {
			while ( false !== ($img_file = readdir($img_dir)) ) {
				// checks for gif, jpg, png
				if ( preg_match("/(\.gif|\.jpg|\.png)$/", $img_file) ) {
					$images[] = $img_file;
				}
			}
			closedir($img_dir);
		}
		return $images;
	}
	
	function getRandomFromArray($ar) {
		mt_srand( (double)microtime() * 1000000 ); 
		$num = array_rand($ar);
		return $ar[$num];
	}
	
	
	// Obtain list of images from directory 
	$imgList = getImagesFromDir($root . $path);
	
	$img = getRandomFromArray($imgList);
?> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="images/favicon(1).ico">
<title>Inspirational Quotes</title>
<link rel="stylesheet" type="text/css" href="assignment.css">

</head>

<body>
	<div id="wrapper">
        <div id="header">
        
            <h1>Inspirational Quotes: Random Quote</h1>
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
 
	<div id="main1">
		<div class="image">
			<div><img src="<?php echo $path . $img ?>" height = "600px" width = "850px" alt="" /></div>
			
             <?php
             
				$servername="localhost";
				$username="khcy4cln_delyn";
				$password="Tiny3l3phant5";
				$dbname="khcy4cln_quotes";
				
				//create connection
				$conn = new mysqli($servername, $username, $password, $dbname);
				
				//check connection
				if($conn->connect_error)
				{
					die("connection failed: " . $conn->connect_error);
				}
				
				
					$sql = "SELECT quoteID, quotes, author, book, category FROM inspirational_quotes ORDER BY RAND() LIMIT 1";  
					$result = $conn->query($sql);
					while($row = $result->fetch_assoc())
					{
						$quoteID = $row['quoteID'];
						$quotes = $row['quotes'];
						$author = $row['author'];
						$book = $row['book'];
						$category = $row['category'];
						
						echo "<h2><span><br>$quotes</span></h2>";
						echo "<br>";
						echo "Author: <h>$author<br><br></h>";
						echo "Book: <h>$book<br><br></h>";
						echo "Category: <h>$category<br><br></h>";
						
					}  
            ?>
		
			</div>
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
