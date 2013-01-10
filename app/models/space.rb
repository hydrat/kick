# old tacker: platz
class Space < ActiveRecord::Base

  belongs_to :location
  belongs_to :package
  belongs_to :sector # Maybe not needed, as it is already specified in Location
  belongs_to :format
  belongs_to :presentation

  attr_accessible :nummer, :preis, :wert

  validates :nummer, presence: true

end
