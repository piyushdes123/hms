class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.belongs_to :roomtype
      t.string :roomnumber
      t.string :description
      t.integer :status

      t.timestamps
    end
  end
end
