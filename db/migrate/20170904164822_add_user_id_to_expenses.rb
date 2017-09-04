class AddUserIdToExpenses < ActiveRecord::Migration[5.0]
  def change
    add_column :expenses, :user_id, :string
    add_column :expenses, :integer, :string
  end
end
