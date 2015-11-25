<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
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
       <div id="main">
		   <?php
        
				$servername="localhost";
				$username="khcy4cln_delyn";
				$password="Tiny3l3phant5";
				$dbname="khcy4cln_quotes";
				
				//create connection
				$conn = new mysqli($servername,$username,$password,$dbname);
				
				$quotes= $_GET['quotes'];
				$author= $_GET['author'];
				$book= $_GET['book'];
				$category= $_GET['category'];
				
				//SQL query
				$sql = "INSERT INTO inspirational_quotes (quotes,author,book,category) VALUES('$quotes', '$author', '$book', '$category')";
				$result= $conn -> query($sql);
				
				$conn->close();
        
        	?>
    <h3>New quote has been added!</h3>
    <h3>Would you like to add an image?</h3>
    <form action="upload2.php" method="post" enctype="multipart/form-data">
        
        <label for="userFile">Image Upload: </label>
        <br/>
        <input type="file" size="20%" name="userFile" id="userFile"/><br />
        <br />
        <label for="altText">Description of image:</label>
        <br />
            
        <input type="text" size="10%" name="altText" id="altText"/><br />
        <p>
        <input type="submit" value="Upload File" />
        </p>
        </form>
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
         <div id="footer">
        <p>
        &copy;G51WPS Choong Lee Lynn 2014
        </p>
        <br>
     </div>
</body>
</html>