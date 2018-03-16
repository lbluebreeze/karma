<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "ciudad".
 *
 * @property int $id
 * @property int $id_departamento
 * @property string $nombre
 *
 * @property Departamento $departamento
 * @property Concursante[] $concursantes
 */
class Ciudad extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'ciudad';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_departamento', 'nombre'], 'required'],
            [['id_departamento'], 'integer'],
            [['nombre'], 'string', 'max' => 100],
            [['id_departamento'], 'exist', 'skipOnError' => true, 'targetClass' => Departamento::className(), 'targetAttribute' => ['id_departamento' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'id_departamento' => 'Id Departamento',
            'nombre' => 'Nombre',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDepartamento()
    {
        return $this->hasOne(Departamento::className(), ['id' => 'id_departamento']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getConcursantes()
    {
        return $this->hasMany(Concursante::className(), ['id_ciudad' => 'id']);
    }
}
