class ItemsController < ApplicationController


	before_filter :find_item, only: [:show, :edit, :update, :destroy, :upvote]
	before_filter :check_if_admin, only: [:edit, :update, :new, :create, :destroy]



	def index
		@items = Item.all
		@item = Item.new
		
	end

	def new
		@item = Item.new

	end


 	 def create
    	@item = Item.create(item_params)
    	if @item.errors.empty?

      		redirect_to item_path(@item)
    	else
     
      		render "new"
		end		
	end


	def show
		unless @item #find_item
			render text: "Page wasn't founded", status: 404
		end
	end


	def edit
		#find_item
	end


	def update
		#find_item
		@item.update_attributes(item_params)

    	if @item.errors.empty?
      		render 'show'
    	else
      		render "edit"
  		end
	end


	def destroy
		#find_item
		@item.destroy

		redirect_to action: "index"
	end

	def upvote
		#find_item
		@item.increment!(:votes_count)
		redirect_to action: "index"
	end

	def expensive
		@items = Item.where("price > 1000")
		render 'index'
	end



	private

		def find_item
			@item= Item.where(id: params[:id]).first
			render_404 unless @item
		end
		

		def item_params
      		params.require(:item).permit(:name,:price,:description,:weight)
    	end

  	
end
