class Note < ApplicationRecord
  has_many :tasks, dependent: :destroy
  validates :title, presence: true
  validates :title, uniqueness: true
end
