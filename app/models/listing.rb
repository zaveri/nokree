class Listing < ActiveRecord::Base
  has_one :company
  has_one :job
  belongs_to :kind
  accepts_nested_attributes_for :company, :job
  
  def self.find_by_categories(category_list, order)
    Listing.find(:all, :include => :category, :conditions =>{"categories.name" => category_list}, :order => order)
  end
  
end
