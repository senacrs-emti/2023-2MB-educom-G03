<?php

include_once "./projeto/config.php";

$conn = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);

if (!$conn) {

  die("Connection failed: " . mysqli_connect_error());

}

$ano = $_GET['ano'];
$sql = "SELECT * FROM livros WHERE edicao LIKE '%$ano%'";
$sqlgen = "SELECT nome FROM genero";
$sqleditora = "SELECT nome FROM editora";

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Leituras Obrigatórias</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="./projeto/assets/style.css">
    <link rel="stylesheet" href="./projeto/assets/backgroundlista.css">
    <link rel="stylesheet" href="script.js">
    
</head>
<body>
    <header>
        <nav class="navbar bg-primary" data-bs-theme="dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.html">Leituras Obrigatórias da URFGS</a>
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
while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
$result2 = mysqli_query($conn, $sqlgen);
if ($row2 = mysqli_fetch_array($result2, MYSQLI_ASSOC)) {
$result3 = mysqli_query($conn, $sqleditora);
if ($row3 = mysqli_fetch_array($result3, MYSQLI_ASSOC)) {
?>
      <div class="card1">
        <div class="card mb-3" style="max-width: 1180px;">
            <div class="row no-gutters">
              <div class="col-md-4">
                <img class="imglista" src="./projeto/assets/img/cinzaescuro.png">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title"><?php echo $row['titulo'];?></h5>
                  <p class="card-text"><?php echo $row['resumo'];?></p>
                  <p class="card-text"><small class="text-muted"><?php echo $row2['nome']?></small></p>
                  <p class="card-text"><small class="text-muted"><?php echo $row3['nome']?></small></p>
                  <p class="card-text"><small class="text-muted">Publicado em <?php echo $row['lanc']?></small></p>
                </div>
              </div>
            </div>
          </div>
        </div>
<?php
}
}
}
?>

       </main>
    </section>
</main>
</body>
</html>