class HomeController < ApplicationController
	skip_before_action :auhenticate_user, only: [:index]
	def index
    @products = Product.all
    @stores = Store.all
	end

	def show

	end
end
