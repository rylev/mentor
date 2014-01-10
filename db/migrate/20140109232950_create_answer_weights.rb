class CreateAnswerWeights < ActiveRecord::Migration
  def change
    create_table :answer_weights do |t|
      t.integer :answer_id
      t.integer :characteristic_id
      t.integer :weight
    end
  end
end
