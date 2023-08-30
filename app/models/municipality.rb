class Municipality < ApplicationRecord
  has_many :chomes

  validates :name, presence: true
end
