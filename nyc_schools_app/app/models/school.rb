class School < ActiveRecord::Base
  belongs_to :district
  include Scorable

  validates_presence_of :name, :address, :zip, :system_code, :city, :state, :district_code

  validates_uniqueness_of :system_code

  def overall_grades
    [self['2012_grade'], self['2011_grade'], self['2010_grade']]
  end

end
