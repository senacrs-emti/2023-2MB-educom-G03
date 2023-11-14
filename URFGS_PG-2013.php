<?php

$ano = $_GET['ano'];
$vest = $_GET['vest'];

$sql = "SELECT * FROM livros WHERE edicao LIKE '%$ano%'";


echo $sql;
$tituloLivro = 'Livro Muito Legal';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Leituras Obrigatórias</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
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
<div class="card1">
        <div class="card mb-3" style="max-width: 1180px;">
            <div class="row no-gutters">
              <div class="col-md-4">
                <img class="imglista" src="./PAGINAS/img/cinzaescuro.png">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title"><?php echo $tituloLivro;?></h5>
                  <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. At, placeat. Dolor rem sit sunt ipsum nisi? Vero, tenetur. Quasi vitae dolorum, cumque animi error cupiditate sequi fuga recusandae. Reprehenderit, explicabo. Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid facilis, sint fugiat possimus ab libero necessitatibus quaerat voluptatem consequatur rerum, sed blanditiis nihil. Obcaecati inventore facere enim illum rerum quod. Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum eaque accusamus hic maxime. Perspiciatis adipisci repellat molestias molestiae debitis accusamus, at qui veniam, ipsa voluptas, hic porro? Fugiat, dolores? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus nulla, aperiam blanditiis nesciunt provident magnam repellat dolor eaque possimus debitis veniam esse voluptas nam, voluptatem cumque, quod ex tempora quis.</p>
                  <p class="card-text"><small class="text-muted">*GENEROS*</small></p>
                  <p class="card-text"><small class="text-muted">Editora</small></p>
                  <p class="card-text"><small class="text-muted">Publicado em XX/XX/XXXX</small></p>
                </div>
              </div>
            </div>
          </div>
<div class="card2">
          <div class="card mb-3" style="max-width: 1180px;">
            <div class="row no-gutters">
              <div class="col-md-4">
                <img class="imglista" src="./PAGINAS/img/cinzaescuro.png">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">TITULO</h5>
                  <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. At, placeat. Dolor rem sit sunt ipsum nisi? Vero, tenetur. Quasi vitae dolorum, cumque animi error cupiditate sequi fuga recusandae. Reprehenderit, explicabo. Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid facilis, sint fugiat possimus ab libero necessitatibus quaerat voluptatem consequatur rerum, sed blanditiis nihil. Obcaecati inventore facere enim illum rerum quod. Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum eaque accusamus hic maxime. Perspiciatis adipisci repellat molestias molestiae debitis accusamus, at qui veniam, ipsa voluptas, hic porro? Fugiat, dolores? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus nulla, aperiam blanditiis nesciunt provident magnam repellat dolor eaque possimus debitis veniam esse voluptas nam, voluptatem cumque, quod ex tempora quis.</p>
                  <p class="card-text"><small class="text-muted">*GENEROS*</small></p>
                  <p class="card-text"><small class="text-muted">Editora</small></p>
                  <p class="card-text"><small class="text-muted">Publicado em XX/XX/XXXX</small></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="card3">
          <div class="card mb-3" style="max-width: 1180px;">
            <div class="row no-gutters">
              <div class="col-md-4">
                <img class="imglista" src="./PAGINAS/img/cinzaescuro.png">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">TITULO</h5>
                  <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. At, placeat. Dolor rem sit sunt ipsum nisi? Vero, tenetur. Quasi vitae dolorum, cumque animi error cupiditate sequi fuga recusandae. Reprehenderit, explicabo. Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid facilis, sint fugiat possimus ab libero necessitatibus quaerat voluptatem consequatur rerum, sed blanditiis nihil. Obcaecati inventore facere enim illum rerum quod. Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum eaque accusamus hic maxime. Perspiciatis adipisci repellat molestias molestiae debitis accusamus, at qui veniam, ipsa voluptas, hic porro? Fugiat, dolores? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus nulla, aperiam blanditiis nesciunt provident magnam repellat dolor eaque possimus debitis veniam esse voluptas nam, voluptatem cumque, quod ex tempora quis.</p>
                  <p class="card-text"><small class="text-muted">*GENEROS*</small></p>
                  <p class="card-text"><small class="text-muted">Editora</small></p>
                  <p class="card-text"><small class="text-muted">Publicado em XX/XX/XXXX</small></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="card4">
          <div class="card mb-3" style="max-width: 1180px;">
            <div class="row no-gutters">
              <div class="col-md-4">
                <img class="imglista" src="./PAGINAS/img/cinzaescuro.png">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">TITULO</h5>
                  <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. At, placeat. Dolor rem sit sunt ipsum nisi? Vero, tenetur. Quasi vitae dolorum, cumque animi error cupiditate sequi fuga recusandae. Reprehenderit, explicabo. Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid facilis, sint fugiat possimus ab libero necessitatibus quaerat voluptatem consequatur rerum, sed blanditiis nihil. Obcaecati inventore facere enim illum rerum quod. Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum eaque accusamus hic maxime. Perspiciatis adipisci repellat molestias molestiae debitis accusamus, at qui veniam, ipsa voluptas, hic porro? Fugiat, dolores? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus nulla, aperiam blanditiis nesciunt provident magnam repellat dolor eaque possimus debitis veniam esse voluptas nam, voluptatem cumque, quod ex tempora quis.</p>
                  <p class="card-text"><small class="text-muted">*GENEROS*</small></p>
                  <p class="card-text"><small class="text-muted">Editora</small></p>
                  <p class="card-text"><small class="text-muted">Publicado em XX/XX/XXXX</small></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="card4">
          <div class="card mb-3" style="max-width: 1180px;">
            <div class="row no-gutters">
              <div class="col-md-4">
                <img class="imglista" src="./PAGINAS/img/cinzaescuro.png">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">TITULO</h5>
                  <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. At, placeat. Dolor rem sit sunt ipsum nisi? Vero, tenetur. Quasi vitae dolorum, cumque animi error cupiditate sequi fuga recusandae. Reprehenderit, explicabo. Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid facilis, sint fugiat possimus ab libero necessitatibus quaerat voluptatem consequatur rerum, sed blanditiis nihil. Obcaecati inventore facere enim illum rerum quod. Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum eaque accusamus hic maxime. Perspiciatis adipisci repellat molestias molestiae debitis accusamus, at qui veniam, ipsa voluptas, hic porro? Fugiat, dolores? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus nulla, aperiam blanditiis nesciunt provident magnam repellat dolor eaque possimus debitis veniam esse voluptas nam, voluptatem cumque, quod ex tempora quis.</p>
                  <p class="card-text"><small class="text-muted">*GENEROS*</small></p>
                  <p class="card-text"><small class="text-muted">Editora</small></p>
                  <p class="card-text"><small class="text-muted">Publicado em XX/XX/XXXX</small></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="card4">
          <div class="card mb-3" style="max-width: 1180px;">
            <div class="row no-gutters">
              <div class="col-md-4">
                <img class="imglista" src="./PAGINAS/img/cinzaescuro.png">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">TITULO</h5>
                  <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. At, placeat. Dolor rem sit sunt ipsum nisi? Vero, tenetur. Quasi vitae dolorum, cumque animi error cupiditate sequi fuga recusandae. Reprehenderit, explicabo. Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid facilis, sint fugiat possimus ab libero necessitatibus quaerat voluptatem consequatur rerum, sed blanditiis nihil. Obcaecati inventore facere enim illum rerum quod. Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum eaque accusamus hic maxime. Perspiciatis adipisci repellat molestias molestiae debitis accusamus, at qui veniam, ipsa voluptas, hic porro? Fugiat, dolores? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus nulla, aperiam blanditiis nesciunt provident magnam repellat dolor eaque possimus debitis veniam esse voluptas nam, voluptatem cumque, quod ex tempora quis.</p>
                  <p class="card-text"><small class="text-muted">*GENEROS*</small></p>
                  <p class="card-text"><small class="text-muted">Editora</small></p>
                  <p class="card-text"><small class="text-muted">Publicado em XX/XX/XXXX</small></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="card4">
          <div class="card mb-3" style="max-width: 1180px;">
            <div class="row no-gutters">
              <div class="col-md-4">
                <img class="imglista" src="./PAGINAS/img/cinzaescuro.png">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">TITULO</h5>
                  <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. At, placeat. Dolor rem sit sunt ipsum nisi? Vero, tenetur. Quasi vitae dolorum, cumque animi error cupiditate sequi fuga recusandae. Reprehenderit, explicabo. Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid facilis, sint fugiat possimus ab libero necessitatibus quaerat voluptatem consequatur rerum, sed blanditiis nihil. Obcaecati inventore facere enim illum rerum quod. Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum eaque accusamus hic maxime. Perspiciatis adipisci repellat molestias molestiae debitis accusamus, at qui veniam, ipsa voluptas, hic porro? Fugiat, dolores? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus nulla, aperiam blanditiis nesciunt provident magnam repellat dolor eaque possimus debitis veniam esse voluptas nam, voluptatem cumque, quod ex tempora quis.</p>
                  <p class="card-text"><small class="text-muted">*GENEROS*</small></p>
                  <p class="card-text"><small class="text-muted">Editora</small></p>
                  <p class="card-text"><small class="text-muted">Publicado em XX/XX/XXXX</small></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="card4">
          <div class="card mb-3" style="max-width: 1180px;">
            <div class="row no-gutters">
              <div class="col-md-4">
                <img class="imglista" src="./PAGINAS/img/cinzaescuro.png">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">TITULO</h5>
                  <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. At, placeat. Dolor rem sit sunt ipsum nisi? Vero, tenetur. Quasi vitae dolorum, cumque animi error cupiditate sequi fuga recusandae. Reprehenderit, explicabo. Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid facilis, sint fugiat possimus ab libero necessitatibus quaerat voluptatem consequatur rerum, sed blanditiis nihil. Obcaecati inventore facere enim illum rerum quod. Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum eaque accusamus hic maxime. Perspiciatis adipisci repellat molestias molestiae debitis accusamus, at qui veniam, ipsa voluptas, hic porro? Fugiat, dolores? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus nulla, aperiam blanditiis nesciunt provident magnam repellat dolor eaque possimus debitis veniam esse voluptas nam, voluptatem cumque, quod ex tempora quis.</p>
                  <p class="card-text"><small class="text-muted">*GENEROS*</small></p>
                  <p class="card-text"><small class="text-muted">Editora</small></p>
                  <p class="card-text"><small class="text-muted">Publicado em XX/XX/XXXX</small></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="card4">
          <div class="card mb-3" style="max-width: 1180px;">
            <div class="row no-gutters">
              <div class="col-md-4">
                <img class="imglista" src="./PAGINAS/img/cinzaescuro.png">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">TITULO</h5>
                  <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. At, placeat. Dolor rem sit sunt ipsum nisi? Vero, tenetur. Quasi vitae dolorum, cumque animi error cupiditate sequi fuga recusandae. Reprehenderit, explicabo. Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid facilis, sint fugiat possimus ab libero necessitatibus quaerat voluptatem consequatur rerum, sed blanditiis nihil. Obcaecati inventore facere enim illum rerum quod. Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum eaque accusamus hic maxime. Perspiciatis adipisci repellat molestias molestiae debitis accusamus, at qui veniam, ipsa voluptas, hic porro? Fugiat, dolores? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus nulla, aperiam blanditiis nesciunt provident magnam repellat dolor eaque possimus debitis veniam esse voluptas nam, voluptatem cumque, quod ex tempora quis.</p>
                  <p class="card-text"><small class="text-muted">*GENEROS*</small></p>
                  <p class="card-text"><small class="text-muted">Editora</small></p>
                  <p class="card-text"><small class="text-muted">Publicado em XX/XX/XXXX</small></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="card4">
          <div class="card mb-3" style="max-width: 1180px;">
            <div class="row no-gutters">
              <div class="col-md-4">
                <img class="imglista" src="./PAGINAS/img/cinzaescuro.png">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">TITULO</h5>
                  <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. At, placeat. Dolor rem sit sunt ipsum nisi? Vero, tenetur. Quasi vitae dolorum, cumque animi error cupiditate sequi fuga recusandae. Reprehenderit, explicabo. Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid facilis, sint fugiat possimus ab libero necessitatibus quaerat voluptatem consequatur rerum, sed blanditiis nihil. Obcaecati inventore facere enim illum rerum quod. Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum eaque accusamus hic maxime. Perspiciatis adipisci repellat molestias molestiae debitis accusamus, at qui veniam, ipsa voluptas, hic porro? Fugiat, dolores? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus nulla, aperiam blanditiis nesciunt provident magnam repellat dolor eaque possimus debitis veniam esse voluptas nam, voluptatem cumque, quod ex tempora quis.</p>
                  <p class="card-text"><small class="text-muted">*GENEROS*</small></p>
                  <p class="card-text"><small class="text-muted">Editora</small></p>
                  <p class="card-text"><small class="text-muted">Publicado em XX/XX/XXXX</small></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="card4">
          <div class="card mb-3" style="max-width: 1180px;">
            <div class="row no-gutters">
              <div class="col-md-4">
                <img class="imglista" src="./PAGINAS/img/cinzaescuro.png">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">TITULO</h5>
                  <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. At, placeat. Dolor rem sit sunt ipsum nisi? Vero, tenetur. Quasi vitae dolorum, cumque animi error cupiditate sequi fuga recusandae. Reprehenderit, explicabo. Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid facilis, sint fugiat possimus ab libero necessitatibus quaerat voluptatem consequatur rerum, sed blanditiis nihil. Obcaecati inventore facere enim illum rerum quod. Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum eaque accusamus hic maxime. Perspiciatis adipisci repellat molestias molestiae debitis accusamus, at qui veniam, ipsa voluptas, hic porro? Fugiat, dolores? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus nulla, aperiam blanditiis nesciunt provident magnam repellat dolor eaque possimus debitis veniam esse voluptas nam, voluptatem cumque, quod ex tempora quis.</p>
                  <p class="card-text"><small class="text-muted">*GENEROS*</small></p>
                  <p class="card-text"><small class="text-muted">Editora</small></p>
                  <p class="card-text"><small class="text-muted">Publicado em XX/XX/XXXX</small></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="card4">
          <div class="card mb-3" style="max-width: 1180px;">
            <div class="row no-gutters">
              <div class="col-md-4">
                <img class="imglista" src="./PAGINAS/img/cinzaescuro.png">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title">TITULO</h5>
                  <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. At, placeat. Dolor rem sit sunt ipsum nisi? Vero, tenetur. Quasi vitae dolorum, cumque animi error cupiditate sequi fuga recusandae. Reprehenderit, explicabo. Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid facilis, sint fugiat possimus ab libero necessitatibus quaerat voluptatem consequatur rerum, sed blanditiis nihil. Obcaecati inventore facere enim illum rerum quod. Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus dolorum eaque accusamus hic maxime. Perspiciatis adipisci repellat molestias molestiae debitis accusamus, at qui veniam, ipsa voluptas, hic porro? Fugiat, dolores? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus nulla, aperiam blanditiis nesciunt provident magnam repellat dolor eaque possimus debitis veniam esse voluptas nam, voluptatem cumque, quod ex tempora quis.</p>
                  <p class="card-text"><small class="text-muted">*GENEROS*</small></p>
                  <p class="card-text"><small class="text-muted">Editora</small></p>
                  <p class="card-text"><small class="text-muted">Publicado em XX/XX/XXXX</small></p>
                </div>
              </div>
            </div>
          </div>
        </div>
       </main>
    </section>
</main>
</body>
</html>
?>