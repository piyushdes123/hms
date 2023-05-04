class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.date :booking_date
      t.datetime:check_in
      t.datetime:check_out

      t.timestamps
    end
  end
end
