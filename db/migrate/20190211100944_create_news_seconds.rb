class CreateNewsSeconds < ActiveRecord::Migration[5.2]
  def change
    create_table :news_seconds do |t|
      t.string :heading
      t.string :description

      t.timestamps
    end
  end
end
