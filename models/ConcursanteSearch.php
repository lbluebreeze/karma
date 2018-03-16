<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Concursante;

/**
 * ConcursanteSearch represents the model behind the search form of `app\models\Concursante`.
 */
class ConcursanteSearch extends Concursante
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'id_departamento', 'id_ciudad'], 'integer'],
            [['nombre', 'apellido', 'cedula', 'email', 'habeas_data'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Concursante::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'id_departamento' => $this->id_departamento,
            'id_ciudad' => $this->id_ciudad,
        ]);

        $query->andFilterWhere(['like', 'nombre', $this->nombre])
            ->andFilterWhere(['like', 'apellido', $this->apellido])
            ->andFilterWhere(['like', 'cedula', $this->cedula])
            ->andFilterWhere(['like', 'email', $this->email])
            ->andFilterWhere(['like', 'habeas_data', $this->habeas_data]);

        return $dataProvider;
    }
}
