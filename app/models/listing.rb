class Listing < ActiveRecord::Base
  has_one :company
  has_one :job
  belongs_to :kind
  accepts_nested_attributes_for :company, :job
  
  def self.find_by_categories(category_list, order)
    Listing.find(:all, :include => :category, :conditions =>{"categories.name" => category_list}, :order => order)
  end
  
  def submitted_long_ago
    # determine how many minutes ago was this listing created/submitted
    minutes_ago = (Time.now - self.start)/60
    if ( minutes_ago > 59)
       # determine how many hours ago was this listing created/submitted
      hrs_ago = minutes_ago/60
      if (hrs_ago > 23)
         # determine how many days ago was this listing created/submitted
        value = hrs_ago/24
        units = "days"
      else
        value = hrs_ago
        units = "hours"
      end
    else
      value = minutes_ago
      units = "minutes"
    end
    units.chop! if value.round == 1
    "#{value.round} #{units}"
  end
  
  # check how many hrs ago submitted
  
  def hours_ago_submitted
    min = (Time.now - self.start)/60
    hrs = min/60
    return hrs
  end
  
  # checks is a listing is new new = less then 24 hours
  def recent_new
    if self.hours_ago_submitted > 24
      return false
    else
      return true
    end
  end
    
end
