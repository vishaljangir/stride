class AddCaptionToTrainingVideos < ActiveRecord::Migration[5.2]
  def change
  	add_column :training_videos, :caption, :string
  end
end
