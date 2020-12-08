class Book < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
end
Book.create(title: nil).valid?
Book.create(body: nil).valid?



