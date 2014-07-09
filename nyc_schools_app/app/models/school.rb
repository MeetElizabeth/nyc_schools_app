class School < ActiveRecord::Base
  belongs_to :district

  validates_presence_of :name, :address, :zip_code
end
