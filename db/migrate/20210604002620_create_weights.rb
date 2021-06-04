class CreateWeights < ActiveRecord::Migration[6.1]
  def change
    create_table :weights do |t|
      t.references :user, null: false, foreign_key: true
      t.float :weight, null: false, default: 0.0

      t.timestamps
    end
  end
end
