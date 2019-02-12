class CreateHeaders < ActiveRecord::Migration[5.2]
  def change
    create_table :headers do |t|

      t.timestamps
    end
  end
end
