class AddColumnTobookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :sur ,:string  

  end
end
