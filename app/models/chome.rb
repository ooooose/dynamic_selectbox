class Chome < ApplicationRecord
  belongs_to :municipality

  validates :name, presence: true
end
