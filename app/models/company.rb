class Company < ActiveRecord::Base
  belongs_to :listing
  validates_format_of :url, :with => /^(http):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix
end
