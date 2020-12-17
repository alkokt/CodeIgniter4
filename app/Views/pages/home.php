<?php if(logged_in()): ?>
<?= $this->extend('layout/templateAdmin'); ?>
<?php else: ?>
<?= $this->extend('layout/template'); ?>
<?php endif; ?>


<?= $this->section('content'); ?>
<div class="container">
    <div class="row">
        <div class="col">
            <h1 class="welcome">Selamat Datang di Web Komik!</h1>
        </div>
    </div>
</div>
<?= $this->endSection(); ?>