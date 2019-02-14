class CreateTrainingBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :training_blogs do |t|
      t.string :description
      t.string :name

      t.timestamps
    end
  end
end
