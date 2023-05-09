class Add < ActiveRecord::Migration[7.0]
  def change

    add_column :customers, :stripe_id, :integer  

  end
end
