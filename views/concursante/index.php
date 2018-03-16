<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ConcursanteSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Concursantes';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="concursante-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Concursante', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'nombre',
            'apellido',
            'cedula',
            'id_departamento',
            //'id_ciudad',
            //'email:email',
            //'habeas_data',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
