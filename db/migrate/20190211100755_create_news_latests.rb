class CreateNewsLatests < ActiveRecord::Migration[5.2]
  def change
    create_table :news_latests do |t|
      t.string :description
      t.string :name

      t.timestamps
    end
  end
end
