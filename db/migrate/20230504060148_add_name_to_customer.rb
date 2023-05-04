class AddNameToCustomer < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :customer_name, :string
    add_column :customers, :address, :string
    add_column :customers, :contact_no, :integer
    add_column :customers, :gender, :integer
  end
end
