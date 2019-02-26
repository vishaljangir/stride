class AddAboutToLogos < ActiveRecord::Migration[5.2]
  def change
  	add_column :logos, :about, :text
  end
end
