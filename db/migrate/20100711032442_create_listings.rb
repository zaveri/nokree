class CreateListings < ActiveRecord::Migration
  def self.up
    create_table :listings do |t|
      t.integer :kind_id
      t.datetime :start

      t.timestamps
    end
  end

  def self.down
    drop_table :listings
  end
end
