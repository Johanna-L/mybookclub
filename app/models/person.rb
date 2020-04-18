class Person < ApplicationRecord
  has_many :books, foreign_key: "owner_id", dependent: :destroy
  has_many :exchanges, dependent: :destroy

  validates :name, presence: true

  scope :friends, -> { where(admin: false) }
  scope :admin, -> { where(admin: true) }
end
