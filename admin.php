<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="shortcut icon" type="image/png" href="favicon.png"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="js/main.js" type="text/javascript"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title></title>
    </head>
    <body>
        <?php
//        include_once 'addphoto.php';
        ?>
        <div class="error"></div>
        <form action="addphoto.php" method="POST" enctype="multipart/form-data" id="photo">
            <p><input type="text" name="name"></p>
            <p><input type="text" name="price"></p>
            <p><input type="text" name="description"></p>
            <p><input type="file" name="photo"></p>
            <p><input type="submit"></p>
        </form>
        
        <div class="gallery"></div>
        
    </body>
</html>
