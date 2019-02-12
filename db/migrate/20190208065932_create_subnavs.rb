class CreateSubnavs < ActiveRecord::Migration[5.2]
  def change
    create_table :subnavs do |t|
      t.string :name
      t.integer :nav_id
      t.timestamps
    end
  end
end
