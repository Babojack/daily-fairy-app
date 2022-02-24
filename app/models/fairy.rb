class Fairy < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_superpower_description,
    against: [ :name, :super_power, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
end
