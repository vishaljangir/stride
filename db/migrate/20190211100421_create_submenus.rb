class CreateSubmenus < ActiveRecord::Migration[5.2]
  def change
    create_table :submenus do |t|
      t.string :name
      t.string :menu_id

      t.timestamps
    end
  end
end
