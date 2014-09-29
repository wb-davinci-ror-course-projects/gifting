class Occasion < ActiveRecord::Base
  belongs_to :giftee
  belongs_to :gifter
end
