<?php if(logged_in()): ?>
<?= $this->extend('layout/templateAdmin'); ?>
<?php else: ?>
<?= $this->extend('layout/template'); ?>
<?php endif; ?>


<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h2>Daftar Orang</h2>
        </div>
    </div>
    <form action="" method="post">
        <div class="input-group mb-3 col-4">
            <input type="text" class="form-control" placeholder="Masukkan keyword pencarian.." name="keyword">
            <div class="input-group-append">
                <button class="btn btn-outline-secondary" type="submit" name="submit">Cari</button>
            </div>
        </div>
    </form>
    <div class="row">
        <div class="col">
            <table class="table table-hover">
                <thead class="table-sm">
                    <tr>
                        <th scope="col" id="satu">No</th>
                        <th scope="col" id="satu">Nama</th>
                        <th scope="col" id="satu">Alamat</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1 + (6 * ($currentPage - 1)); ?>
                    <?php foreach ($orang as $o) : ?>
                        <tr>
                            <th scope="row"><?= $i++; ?></th>
                            <td><?= $o['nama']; ?></td>
                            <td><?= $o['alamat']; ?></td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
            <?= $pager->links('orang', 'orang_pagination'); ?>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>