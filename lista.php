<?php

include_once "./projeto/config.php";

$conn = mysqli_connect('localhost', 'root','', 'leituras');

if (!$conn) {

  die("Connection failed: " . mysqli_connect_error());

}

$ano = $_GET['ano'];
<<<<<<< HEAD
$sql = "SELECT * FROM livros WHERE edicao LIKE '%$ano%'";
$sqlgen = ";";
$sqleditora = "SELECT * FROM editora ORDER BY '%$sql%'";
=======
$sql = "SELECT resumo FROM livros WHERE edicao LIKE '%$ano%'";

$tituloLivro = 'Livro Muito Legal';
>>>>>>> parent of 066c121 (CODIGO SQL FUNCIONANDO!)

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Leituras Obrigatórias</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="./projeto/assets/style.css">
    <link rel="stylesheet" href="script.js">
<<<<<<< HEAD
    <link rel="shortcut icon" href="./projeto/assets/img/livro.png"/>
=======
>>>>>>> parent of 066c121 (CODIGO SQL FUNCIONANDO!)
</head>
<body>
    <header>
        <nav class="navbar bg-primary" data-bs-theme="dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.php">Leituras Obrigatórias da URFGS</a>
                <form class="d-flex" role="search">
                  <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                  <button class="btn btn-outline-light" type="submit">Pesquisar</button>
                </form>
              </div>
          </nav>
</header>
<main>
    <section class="page">
       <main>
        <h1><?php echo $ano;?></h1>
<?php
$result = mysqli_query($conn, $sql);
<<<<<<< HEAD
while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
$result2 = mysqli_query($conn, $sqlgen);
if ($row2 = mysqli_fetch_array($result2, MYSQLI_ASSOC)) {
$result3 = mysqli_query($conn, $sqleditora);
if ($row3 = mysqli_fetch_array($result3, MYSQLI_ASSOC)) {
=======
while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
>>>>>>> parent of 066c121 (CODIGO SQL FUNCIONANDO!)
?>

      <div class="card1">
        <div class="card mb-3" style="max-width: 1180px;">
            <div class="row no-gutters">
              <div class="col-md-4">
                <img class="imglista" src="./projeto/assets/img/cinzaescuro.png">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title"><?php echo $tituloLivro;?></h5>
                  <p class="card-text"><?php echo $sql;?></p>
                  <p class="card-text"><small class="text-muted">*GENEROS*</small></p>
                  <p class="card-text"><small class="text-muted">Editora</small></p>
                  <p class="card-text"><small class="text-muted">Publicado em XX/XX/XXXX</small></p>
                </div>
              </div>
            </div>
          </div>
        </div>
<?php
}
?>

       </main>
    </section>
    <footer>
    <a href="" class="giticon"><img src="./projeto/assets/img/git.png"></a>
    </footer>
</main>
</body>
</html>