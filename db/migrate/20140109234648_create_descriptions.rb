class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.integer :characteristic_id
      t.integer :programming_language_id
    end
  end
end
