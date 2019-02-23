class ChangeDescriptionTypeInAllTables < ActiveRecord::Migration[5.2]
  def change
  	change_column :news_firsts, :description, :text
  	change_column :stock_market_updates, :description, :text
  	change_column :news_seconds, :description, :text
  	change_column :news_latests, :description, :text
  	change_column :sliders, :description, :text
  	change_column :training_blogs, :description, :text
  end
end
