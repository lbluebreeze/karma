<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\ConcursanteSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="concursante-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'nombre') ?>

    <?= $form->field($model, 'apellido') ?>

    <?= $form->field($model, 'cedula') ?>

    <?= $form->field($model, 'id_departamento') ?>

    <?php // echo $form->field($model, 'id_ciudad') ?>

    <?php // echo $form->field($model, 'email') ?>

    <?php // echo $form->field($model, 'habeas_data') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
