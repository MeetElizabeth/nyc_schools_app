class District < ActiveRecord::Base
  belongs_to :borough
  has_many :schools


  validates_presence_of :district_title
  validates_uniqueness_of :district_title

end
