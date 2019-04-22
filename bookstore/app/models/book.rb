class Book < ApplicationRecord
  belongs_to :store
  has_many :authorbooks
  has_many :authors, through: :authorbooks
end
