class Track < ApplicationRecord

  belongs_to :album

  has_one :band,
    through: :album,
    source: :band


  validates :name, :ord, :lyrics, presence: true
  validates :ord, uniqueness: {scope: :album_id }
  validates :bonus, inclusion: {in: [true,false] }

  after_initialize :set_defaults




  def set_defaults
    self.bonus ||= false
  end



end
