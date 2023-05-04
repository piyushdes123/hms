class CreateRoomtypes < ActiveRecord::Migration[7.0]
  def change
    create_table :roomtypes do |t|
      t.string :roomtype
      t.string :description
      t.decimal :cost
      t.integer :status

      t.timestamps
    end
  end
end
