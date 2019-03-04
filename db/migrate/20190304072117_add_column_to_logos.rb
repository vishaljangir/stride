class AddColumnToLogos < ActiveRecord::Migration[5.2]
  def change
    add_column :logos, :contact, :integer, limit: 8
    add_column :logos, :email, :string
    add_column :logos, :location, :string
  end
end
