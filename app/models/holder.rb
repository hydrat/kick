# Old tacker: boxtyp
class Holder < ActiveRecord::Base
  belongs_to :location
  belongs_to :dispenser
  has_many :slots

  attr_accessible :name
end
