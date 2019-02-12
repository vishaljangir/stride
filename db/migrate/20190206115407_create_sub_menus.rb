class CreateSubMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_menus do |t|
      t.string :name
      t.integer :menu_id

      t.timestamps
    end
  end
end
