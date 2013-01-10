class Slot < ActiveRecord::Base
  belongs_to :holder
  belongs_to :format
  
  attr_accessible :anzahl, :preis, :reihenfolge
end
