class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.float :height
      t.string :sex
      t.string :profile_image

      t.timestamps
    end
  end
end
