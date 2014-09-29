class CreateGifters < ActiveRecord::Migration
  def change
    create_table :gifters do |t|
      t.string :name
      t.string :password_digest

      t.timestamps
    end
  end
end
