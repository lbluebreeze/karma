<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Concursante */

$this->title = 'Create Concursante';
$this->params['breadcrumbs'][] = ['label' => 'Concursantes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="concursante-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
