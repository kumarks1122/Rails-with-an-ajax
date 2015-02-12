class FlowerShopController < ApplicationController
	def index
		@users=User.all
		@user_new=User.new
	end

	def wholeseller
		@users=User.all
		@wholesellers=User.find(params[:id])
	end

	def retailer
		@users=User.all
		@retailers=User.find(params[:id])
	end

	def customer
		@users=User.all
		@customers=User.find(params[:id])
	end
	def create
		user_email=params.require("user").permit(:emailid)
		@userss=User.new(params.require("user").permit(:name,:emailid))
		@user_check=@userss.save
		if @user_check
			flash[:notice]="hi"
			@roles=@userss.roles.new(params.require("user").permit(:wholeseller,:customer,:retailer))		
			@role_check=@roles.save
		end
		respond_to do |format|
			format.js
		end		
	end
	def update
		if params[:wholesale]
			if params[:wholesale][:id]
				@wholesellers=User.find(params[:wholesale][:id])
				@retail_check=@wholesellers.wholesales.new(:retailer_id=>params[:id])
				@retailer_check=@retail_check.save
				respond_to do |format|
					format.js
				end			
			end
		end
		if params[:retail]
			if params[:retail][:id]
				@retailers=User.find(params[:retail][:id])
				@custom_check=@retailers.retails.new(:customer_id=>params[:id])
				@customer_check=@custom_check.save
				respond_to do |format|						
					format.js
				end
			end
		end
	end
end
