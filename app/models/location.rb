# Old tacker: rolle
class Location < ActiveRecord::Base

  belongs_to :site
  belongs_to :sector
  belongs_to :location_status

  has_many :spaces, dependent: :destroy

  attr_accessible :aktiv, :dispo_note, :name, :note, :vertrag, :zahlungstermin

  validates :name, presence: true
end
