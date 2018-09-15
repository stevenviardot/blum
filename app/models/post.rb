class Post < ApplicationRecord
  belongs_to :user, :optional => true
  has_many :rents, dependent: :destroy
  belongs_to :category
end
