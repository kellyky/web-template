#!/bin/bash

# Directions: 
## Copy file into new project directory.
## Run file
## *** DO NOT delete - OR - run original copy of file. It deletes itself once run. 
## Note: Will need to periodically update contents of current bootstrap/jQuery files

# CSS: Creates CSS directory. Creates empty styles file, and copies bootstrap file from template directory
mkdir css
touch css/styles.css
cp ~/Development/web-template/css/bootstrap.css ./css

# Javascript: Creates JS directory. Creates empty scripts file. Coppies jQuery file from template directory
mkdir js
touch js/scripts.js
cp ~/Development/web-template/js/jquery-3.5.1.js ./js
echo '$(document).ready(function() {

});' >> js/scripts.js

# Creates index.html file skeletor, including links to the above css/js files.
touch index.html
echo '<!DOCTYPE html>
<html lang="en-US">
<head>
  <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
  <link href="css/styles.css" rel="stylesheet" type="text/css">
  <script src="js/jquery-3.5.1.js"></script>
  <script src="js/scripts.js"></script>
  <title></title>
</head>
<body>
  <div class="container">
  </div>
</body>
</html>' >> index.html

# Removes this copy of itself
rm mk-web.sh


