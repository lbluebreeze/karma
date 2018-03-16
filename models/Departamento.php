<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "departamento".
 *
 * @property int $id
 * @property string $nombre
 *
 * @property Ciudad[] $ciudads
 * @property Concursante[] $concursantes
 */
class Departamento extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'departamento';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nombre'], 'required'],
            [['nombre'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nombre' => 'Nombre',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCiudads()
    {
        return $this->hasMany(Ciudad::className(), ['id_departamento' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getConcursantes()
    {
        return $this->hasMany(Concursante::className(), ['id_departamento' => 'id']);
    }
}
