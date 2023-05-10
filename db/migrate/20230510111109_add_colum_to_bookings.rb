class AddColumToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :charges, :integer
  end
end
