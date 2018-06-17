class Album < ApplicationRecord
  belongs_to :band

  has_many :tracks, dependent: :destroy


  #name must be unique in the context of each band.
  validates :name, :year, presence: true
  validates :name, uniqueness: {scope: :band_id}
  validates :year, numericality: { minimum: 1900, maximum: 9000 }
  validates :live, inclusion: {in: [true,false] }

  #after instantiating Album obj...
  after_initialize :set_defaults


  def set_defaults
    #set object default to false or keep true value
    self.live ||= false
  end


end
