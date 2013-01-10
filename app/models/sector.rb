class Sector < ActiveRecord::Base

  has_many :packages
  has_many :locations
  has_many :spaces # Maybe not needed, as it is already specified in Location

  attr_accessible :name, :abkuerzung

  validates :name, presence: true

end