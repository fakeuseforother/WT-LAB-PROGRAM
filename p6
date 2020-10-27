<!--  
	inside xampp
	1st create a file prog6.php and write this prog
	2nd when opend on xampp it shows error 1st coze in create a new file inside folder counterlog(show error coze counterlog is  not exite at the begining so )
	3rd refresh the page then o/p is found and keep refreshing coze counter  increses
 
-->
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>php running localy</title>
</head>
<body>
<h1>Welcome to my page</h1>
<?php
    $fp = fopen("counterlog.txt","r");
    $count = fread($fp,10);
    fclose($fp);
    $count=$count+1;
    echo "<p>Page views:".$count."</p>";
    $fp=fopen("counterlog.txt","w");
    fwrite($fp,$count);
    fclose($fp);
?>
</body>
</html>
