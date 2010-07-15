class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.string :location
      t.string :position
      t.string :perks
      t.string :description
      t.string :how
      t.integer :listing_id
      t.string :category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end
end
