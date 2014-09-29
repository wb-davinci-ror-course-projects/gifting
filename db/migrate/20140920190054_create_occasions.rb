class CreateOccasions < ActiveRecord::Migration
  def change
    create_table :occasions do |t|
      t.string :type_of_occasion
      t.date :day_of_occasion
      t.integer :gifter_id
      t.integer :giftee_id

      t.timestamps
    end
  end
end
