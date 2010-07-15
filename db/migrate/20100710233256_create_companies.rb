class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name
      t.string :url
      t.string :email
      t.integer :listing_id

      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end
