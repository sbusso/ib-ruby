class AddExecutions < ActiveRecord::Migration

  def change
    create_table(:executions) do |t|
      # TWS orders have fixed order id of 0 AND client id of 0
      t.integer :order_id #    TWS orders have a fixed order id of 0
      t.integer :client_id #   Id of the client that placed the order
      t.integer :perm_id #     Permanent order id, remains the same over TWS sessions
      t.string :exec_id #      Unique order execution id
      t.string :time #         String! The order execution time
      t.string :exchange #     Exchange that executed the order
      t.string :order_ref #    Order reference
      t.string :account_name # The customer account number
      t.float :price #         double: The order execution price
      t.float :average_price # double: Average price (for all executions?)
      t.integer :shares #              The number of shares filled
      t.integer :cumulative_quantity # Cumulative quantity
      t.integer :liquidation # This position to be liquidated last should the need arise
      t.string :side #         Was the transaction a buy or a sale: BOT|SLD
    end
  end
end
