class Item < ApplicationRecord
	
	validates :price, 
		numericality:{ greater_than_or_equal_to:0.01, allow_nil:true}
	validates :name, :description, presence: true		

	after_initialize {puts "initialized"} #Item.new; Item.first
	after_save {puts "save"}#Item.save; Item.create; item.update_attributes()
	after_create {puts "created"} #
	after_update {puts "updated"}
	after_destroy {puts 'destroyed'} #item.destroy

	has_many :positions
	has_many :carts, through: :positions
	has_many :comments, as: :commentable

end
