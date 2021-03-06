<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Menü</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                <?php
                    foreach($data[0] as $menuItem)
                    {
                        echo '<li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="../Pages/'.$menuItem['url'].'">'.$menuItem['name'].'</a>
                        </li>';
                    }
                ?>
                  
                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Keresés..." aria-label="Search">
                    <button class="btn btn-outline-light" type="submit">Keresés...</button>
                </form>
                </div>
            </div>
        </nav>

        <main>