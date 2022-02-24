class Fairy < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true

  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name_and_superpower_description,
    against: [
      [:name, 'A'],
      [:super_power, 'B'],
      [:description, 'C']
    ],
    using: {
      tsearch: { prefix: true }
    }
end
