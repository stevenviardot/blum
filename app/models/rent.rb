class Rent < ApplicationRecord
  belongs_to :post
  belongs_to :user, :optional => true
end
