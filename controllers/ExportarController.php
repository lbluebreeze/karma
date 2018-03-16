<?php

namespace app\controllers;

use Yii;
use app\models\Concursante;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * ExportarController implements the CRUD actions for Exportar model.
 */
class ExportarController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    public function actionIndex()
    {
        $dataProvider = new \yii\data\ActiveDataProvider([
            'query' => Concursante::find(),
            'pagination' => [
                'pageSize' => 20,
            ],
        ]);

        return $this->render('index', [
            'dataProvider' => $dataProvider,
            'gridColumns' => [
                'fecha_creacion',
                'nombre',
                'apellido',
                'cedula',
                'celular',
                [
                    'attribute' => 'id_departamento',
                    'value' => function($model, $key, $index, $column) {
                        return $model->getDepartamento()->one()->nombre;
                    }
                ],
                [
                    'attribute' => 'id_ciudad',
                    'value' => function($model, $key, $index, $column) {
                        return $model->getCiudad()->one()->nombre;
                    }
                ],
                'email',
                [
                    'attribute' => 'habeas_data',
                    'value' => function($model, $key, $index, $column) {
                        return ($model->habeas_data) ? 'Sí' : 'No';
                    }
                ],
                [
                    'attribute' => 'ganador',
                    'value' => function($model, $key, $index, $column) {
                        return ($model->ganador) ? 'Sí' : 'No';
                    }
                ],
            ]
        ]);
    }

    protected function findModel($id)
    {
        if (($model = Exportar::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
