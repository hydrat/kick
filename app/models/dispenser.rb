# Old tacker: boxtypen
class Dispenser < ActiveRecord::Base

  belongs_to :sector

  attr_accessible :abkuerzung, :banner, :name, :nummer, :slots_count

  validates :name, presence: true
end
