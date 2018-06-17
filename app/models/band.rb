class Band < ApplicationRecord

  validates :name, presence: true, uniqueness: true

  has_many :tracks,
  through: :albums,
  source: :track


  has_many :albums, dependent: :destroy



end
