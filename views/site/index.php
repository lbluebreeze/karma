<?php

use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $form yii\widgets\ActiveForm */
/* @var $model app\models\Concursante */

$this->title = 'Karma';
?>
<div class="site-index">

    <div class="body-content">

        <div class="row">
            <div class="col-lg-8">

                <div class="promo-container">

                    <div class="promo1">
                        <p>En el mes de Marzo, nuestra compañía Karma celebramos la apertura de las nuevas sucursales de concesionarios en Bogotá.</p>
                    </div>
                    <div class="promo2">
                        <p>Sea partícipe de nuestro concurso en el que sortearemos un Volkswagen Jetta GLI Modelo 2019.</p>
                    </div>
                    <div class="promo3">
                        <p>¡Sólo registre sus datos para participar!</p>
                    </div>

                </div>

            </div>
            <div class="col-lg-4">
                <?php $form = ActiveForm::begin(['action' => ['concursante/create']]); ?>
                <fieldset class="form">
                    <h2>Karma</h2>
                    <?= $form->field($model, 'nombre', ['inputOptions' => ['placeholder' => 'Nombre'], 'labelOptions' => ['label' => null]])->textInput(['maxlength' => true]) ?>
                    <?= $form->field($model, 'apellido', ['inputOptions' => ['placeholder' => 'Apellido'], 'labelOptions' => ['label' => null]])->textInput(['maxlength' => true]) ?>
                    <?= $form->field($model, 'cedula', ['inputOptions' => ['placeholder' => 'Cédula'], 'labelOptions' => ['label' => null]])->textInput(['maxlength' => true]) ?>
                    <?= $form->field($model, 'id_departamento', ['labelOptions' => ['label' => null]])->dropDownList(yii\helpers\ArrayHelper::map(app\models\Departamento::find()->all(), 'id', 'nombre'), ['prompt' => '-- Departamento --']) ?>
                    <?= $form->field($model, 'id_ciudad', ['labelOptions' => ['label' => null]])->dropDownList([], ['prompt' => '-- Ciudad --']) ?>
                    <?= $form->field($model, 'celular', ['inputOptions' => ['placeholder' => 'Celular'], 'labelOptions' => ['label' => null]])->textInput(['maxlength' => true]) ?>
                    <?= $form->field($model, 'email', ['inputOptions' => ['placeholder' => 'Correo electrónico'], 'labelOptions' => ['label' => null]])->textInput(['maxlength' => true]) ?>
                    <div class="habeas_data">
                        <?= $form->field($model, 'habeas_data', ['labelOptions' => ['label' => null]])->checkbox(['label' => '&nbsp;Autorizo el tratamiento de mis datos de acuerdo con la finalidad establecida en la política de protección de datos personales', 'class' => 'checkbox'], true) ?>
                    </div>
                    <?= yii\helpers\Html::submitButton('¡Enviar!', ['class' => 'btn btn-primary guardar']) ?>
                    <!-- <input type="button" name="guardar" value="¡Enviar!" class="btn btn-primary guardar" /> -->
                </fieldset>
                <?php ActiveForm::end(); ?>
            </div>
        </div>
        <div id="mensaje" class="alert alert-success"></div>
    </div>
</div>
<script type="text/javascript">
    window.onload = function(){
        $('input').on('keyup',function(){
            var regex = /[a-zA-Z0-9-_\ @\.]+$/;
            console.log(this.value);
            if (!regex.test(this.value)) {
                this.value = this.value.slice(0,this.value.length-1);
            }
        });
        $('#concursante-id_departamento').on('change', function(){
            $.ajax({
                type: 'GET',
                data: {'id': this.value},
                dataType: 'text',
                url: '<?= yii\helpers\Url::to(['departamento/ciudades']) ?>',
                beforeSend: function(){
                    $("#concursante-id_ciudad").html("<option value='0'>-- Ciudad --</option>");
                },
                success: function(data){
                    $("#concursante-id_ciudad").html(data);
                },
            });
        });
        <?php if (isset(Yii::$app->session['msj']) && is_array(Yii::$app->session['msj'])) { ?>
            $("#mensaje")
                .removeClass()
                .addClass('<?= Yii::$app->session['msj'][0] ?>')
                .text('<?= Yii::$app->session['msj'][1] ?>')
                .animate({
                    opacity: 1,
                    top: '8%'
                })
                .on('click', function(){
                    $(this).animate({
                        opacity: 0,
                        top: 0
                    });
                });
        <?php } ?>
        <?php unset(Yii::$app->session['msj']); ?>
    }
</script>