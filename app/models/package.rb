class Package < ActiveRecord::Base

  has_many :spaces
  has_many :slots
  belongs_to :sector
  belongs_to :format

  attr_accessible :format_id, :name, :nummer, :sector_id, :spaces_count, :slots_count, :totalpreis, :webtext

  validates :name, presence: true
  validates :nummer, presence: true
  validates :format_id, presence: true
end
