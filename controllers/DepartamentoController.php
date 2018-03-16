<?php

namespace app\controllers;

use Yii;
use app\models\Departamento;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * DepartamentoController implements the CRUD actions for Departamento model.
 */
class DepartamentoController extends Controller
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

    public function actionCiudades($id)
    {
        $model = $this->findModel($id);
        $ciudades = yii\helpers\ArrayHelper::map($model->getCiudads()->all(), 'id', 'nombre');
        echo "<option value='0'>-- Ciudad --</option>";
        foreach ($ciudades as $key => $ciudad) {
            echo "<option value='$key'>$ciudad</option>\r";
        }
    }

    protected function findModel($id)
    {
        if (($model = Departamento::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
