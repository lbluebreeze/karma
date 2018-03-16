<?php

use \kartik\export\ExportMenu;
use \kartik\grid\GridView;

/* @var $this yii\web\View */

$this->title = 'Karma';
?>
<div class="site-index">

    <div class="body-content">

        <div class="row">
            <div class="col-lg-12">
                <div class="exportar">
                    <?php
                        echo ExportMenu::widget([
                            'dataProvider' => $dataProvider,
                            'columns' => $gridColumns,
                            'fontAwesome' => true,
                            'dropdownOptions' => [
                                'label' => 'Exportar todo',
                                'class' => 'btn btn-default'
                            ]
                        ]) . "<hr>\n".
                        GridView::widget([
                            'dataProvider' => $dataProvider,
                            'columns' => $gridColumns,
                        ])
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>