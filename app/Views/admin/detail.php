<?= $this->extend('layout/templateAdmin'); ?>

<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h2 class="mt-2">Detail Komik</h2>
            <div class="card mb-3">
                <div class="row no-gutters">
                    <div class="col-md-4">
                        <img src="/img/<?= $komik['sampul']; ?>" class="card-img shadow p-3 mb-5" alt="...">
                    </div>
                    <div id="card" class="col-md-8">
                        <div class="card-body">
                            <ul class="list-group list-group-flush">
                                <li id="card" class="list-group-item">
                                    <p class="card-text"><b>Judul : </b> <?= $komik['judul']; ?></p>
                                    <p class="card-text"><b>Penulis : </b> <?= $komik['penulis']; ?></p>
                                    <p class="card-text"><b>Genre : </b> <?= $komik['genre']; ?></p>
                                    <p class="card-text"><b>Penerbit : </b> <?= $komik['penerbit']; ?></small></p>
                                </li>
                                <li id="card" class="list-group-item">
                                    <h5 class="sinopsis"><b>Sinopsis</b></h5>
                                    <p class="card-text"><?= $komik['sinopsis']; ?></p>
                                    <a id="back" href="/admin/edit/<?= $komik['slug']; ?>" class="btn btn-outline-dark">Edit</a>

                                    <form action="/admin/<?= $komik['id']; ?>" method="post" class="d-inline">
                                        <?= csrf_field(); ?>
                                        <input type="hidden" name="_method" value="DELETE">
                                        <button type="submit" class="btn btn-danger" onclick="return confirm('apakah anda yakin?');">Delete</button>
                                    </form>
                                </li>
                            </ul>
                            <a id="back" href="/admin" class="btn btn-outline-dark">Kembali</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>