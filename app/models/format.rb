class Format < ActiveRecord::Base

  has_many :packages
  has_many :spaces

  attr_accessible :name, :size

  validates :name, presence: true

end
