class Fairy < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_superpower_description,
    against: [ :name 'A', :super_power 'C', :description 'B'],
    using: {
      tsearch: { prefix: true }
    }
end
end
