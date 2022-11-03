class CreateBookingTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_types do |t|
      t.string :category
      t.string :location
      t.integer :duration
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.references :booking, null: false, foreign_key:true
      
      t.timestamps
    end
  end
end
