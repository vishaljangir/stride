class CreateSliders < ActiveRecord::Migration[5.2]
  def change
    create_table :sliders do |t|

      t.timestamps
    end
  end
end
