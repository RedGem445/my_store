class Comment < ApplicationRecord

	belongs_to :user, required: false
	belongs_to :commentable, required: false, polymorphic: true
end
