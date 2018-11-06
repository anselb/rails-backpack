class Backpack < ApplicationRecord
  validates :color, presence: true
  validates :owner_name, presence: true
  validates :num_pens, length: {
    minimum: 0,
    maximum: 100000,
    wrong_length: 'Invalid number of pens',
    too_long: "%{count} is too many pens. There is no way you fit that many pens into your backpack.",
    too_short: "You cannot have a negative number of pens."
  }
  validates :owner_name, length: {
    minimum: 0,
    maximum: 1000,
    wrong_length: 'Invalid length',
    too_long: "%{count} charters is the maximum allowed.",
    too_short: "You must have at least %{count} characters."
  }
end
