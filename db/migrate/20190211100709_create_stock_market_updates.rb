class CreateStockMarketUpdates < ActiveRecord::Migration[5.2]
  def change
    create_table :stock_market_updates do |t|
      t.string :description

      t.timestamps
    end
  end
end
