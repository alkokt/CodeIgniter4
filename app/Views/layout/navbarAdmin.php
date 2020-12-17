<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="/">Web Komik:Admin</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a id="tab" href="/">Home <span class="sr-only">(current)</span></a>
                    <a id="tab" href="/admin">Komik</a>
                    <a id="tab" href="/orang">Orang</a>
                </div>
                    <?php if(logged_in()):  ?>
                        <a id="logout" href="/logout">Logout</a>
                    <?php else: ?>
                        <a id="login" href="/admin">Login</a>
                    <?php endif; ?>

            </div>
        </div>
    </nav>