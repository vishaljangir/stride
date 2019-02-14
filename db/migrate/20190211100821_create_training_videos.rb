class CreateTrainingVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :training_videos do |t|

      t.timestamps
    end
  end
end
