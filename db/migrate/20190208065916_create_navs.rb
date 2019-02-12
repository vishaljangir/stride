class CreateNavs < ActiveRecord::Migration[5.2]
  def change
    create_table :navs do |t|
      t.string :name
      t.integer :header_id
      t.timestamps
    end
  end
end
