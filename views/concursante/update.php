<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Concursante */

$this->title = 'Update Concursante: {nameAttribute}';
$this->params['breadcrumbs'][] = ['label' => 'Concursantes', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="concursante-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
