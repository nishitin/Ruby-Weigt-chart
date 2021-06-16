class CreateWeights < ActiveRecord::Migration[6.1]
  def change
    create_table :weights do |t|
      t.references :user, null: false, foreign_key: true
      t.float :value, null: false, default: 0.0
      t.datetime :input_time

      t.timestamps
    end
  end
end
