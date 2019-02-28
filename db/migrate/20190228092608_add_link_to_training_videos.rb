class AddLinkToTrainingVideos < ActiveRecord::Migration[5.2]
  def change
  	add_column :training_videos, :link, :text
  end
end
