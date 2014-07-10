class Borough < ActiveRecord::Base
  has_many :districts

  validates_presence_of :name, :total_pop
end
