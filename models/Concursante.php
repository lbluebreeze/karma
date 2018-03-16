<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "concursante".
 *
 * @property int $id
 * @property string $nombre
 * @property string $apellido
 * @property string $cedula
 * @property string $celular
 * @property int $id_departamento
 * @property int $id_ciudad
 * @property string $email
 * @property string $habeas_data
 *
 * @property Ciudad $ciudad
 * @property Departamento $departamento
 */
class Concursante extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'concursante';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nombre', 'apellido', 'cedula', 'celular', 'id_departamento', 'id_ciudad', 'email'], 'required'],
            [['id_departamento', 'id_ciudad'], 'integer'],
            [['nombre', 'apellido', 'email'], 'string', 'max' => 100],
            [['cedula'], 'string', 'max' => 20],
            [['celular'], 'string', 'max' => 30],
            [['habeas_data'], 'string', 'max' => 3],
            [['id_ciudad'], 'exist', 'skipOnError' => true, 'targetClass' => Ciudad::className(), 'targetAttribute' => ['id_ciudad' => 'id']],
            [['id_departamento'], 'exist', 'skipOnError' => true, 'targetClass' => Departamento::className(), 'targetAttribute' => ['id_departamento' => 'id']],
            [['email'], 'email'],
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
            'apellido' => 'Apellido',
            'cedula' => 'Cedula',
            'celular' => 'Celular',
            'id_departamento' => 'Departamento',
            'id_ciudad' => 'Ciudad',
            'email' => 'Correo Electrónico',
            'habeas_data' => 'Autorización',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCiudad()
    {
        return $this->hasOne(Ciudad::className(), ['id' => 'id_ciudad']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDepartamento()
    {
        return $this->hasOne(Departamento::className(), ['id' => 'id_departamento']);
    }
}
