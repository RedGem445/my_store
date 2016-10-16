class Cart < ApplicationRecord

	belongs_to :user, required: false

	has_many :positions
	has_many :items, through: :positions

end
