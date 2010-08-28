class CreateListings < ActiveRecord::Migration
  def self.up
    create_table :listings do |t|
      t.string :name
      t.string :location
      t.string :company
      t.text :perks
      t.text :description
      t.text :how
      t.datetime :start
      t.datetime :expires
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :listings
  end
end
