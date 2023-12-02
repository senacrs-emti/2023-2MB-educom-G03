<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Leituras Obrigatórias</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="./projeto/assets/style.css">
    <link rel="stylesheet" href="script.js">
    <link rel="shortcut icon" href="./projeto/assets/img/livro.png"/>
</head>
<body>
        <header>
            <nav class="navbar bg-primary" data-bs-theme="light">
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
    <section class="timeline">
        <div class="timeline_container container">
            <div class="timeline_dates_up">
                <a href="lista.php?ano=2013"><button class="ul1"> 2013 </button></a>
                <a href="lista.php?ano=2015"><button class="ul1"> 2015 </button></a>
                <a href="lista.php?ano=2017"><button class="ul1"> 2017 </button></a>
                <a href="lista.php?ano=2019"><button class="ul1"> 2019 </button></a>
                <a href="lista.php?ano=2021"><button class="ul1"> 2021 </button></a>
                <a href="lista.php?ano=2023"><button class="ul1"> 2023 </button></a>
            </div>
                <div class="timeline_line"></div>
       <div class="timeline_container container">
            <div class="timeline_dates_down">
                <a href="lista.php?ano=2014"><button class="ul2"> 2014 </button></a>
                <a href="lista.php?ano=2016"><button class="ul2"> 2016 </button></a>
                <a href="lista.php?ano=2018"><button class="ul2"> 2018 </button></a>
                <a href="lista.php?ano=2020"><button class="ul2"> 2020 </button></a>
                <a href="lista.php?ano=2022"><button class="ul2"> 2022 </button></a>
                <a href="lista.php?ano=2024"><button class="ul2"> 2024 </button></a>
                </div>
            </div>
        </div>
    </section>
    <footer>
    <a href="index.php" id="github"><img src="./projeto/assets/img/git.png"></a>
    </footer>
</main>
</body>
</html>