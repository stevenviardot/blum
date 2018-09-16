class Rent < ApplicationRecord
  belongs_to :post
  belongs_to :user, :optional => true

  validates :activated,
            :inclusion => { :in => [true, false] }


end
