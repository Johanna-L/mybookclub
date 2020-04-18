class Book < ApplicationRecord
  belongs_to :owner, class_name: 'Person'

  validates :title, presence: true
  validates :author, presence: true
end
