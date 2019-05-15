class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true, acceptance: { accept:
    ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
end

# @books = Book.where(author_id: @author.id)
