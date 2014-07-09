class District < ActiveRecord::Base
  belongs_to :borough
  has_many :trailers

  validates_presence_of :name
end
