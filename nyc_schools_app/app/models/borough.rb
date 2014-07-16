class Borough < ActiveRecord::Base
  has_many :districts
  include Scorable

  validates_presence_of :name
  validates_uniqueness_of :name

  validates :total_pop, { numericality: { only_integer: true }}

  validates :enrollment, { numericality: { only_integer: true }}

end
