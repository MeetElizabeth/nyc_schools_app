class School < ActiveRecord::Base
  belongs_to :district

  validates_presence_of :name, :address, :zip, :system_code, :city, :state, :district_code

  validates_uniqueness_of :system_code

end
