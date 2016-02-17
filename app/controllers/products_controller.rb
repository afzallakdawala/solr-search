class ProductsController < ApplicationController
	
  def index
		products = Product.search do
			keywords params[:query]
		  with(:category,params[:category]) if params[:category].present?
		  with(:location,params[:location]) if params[:location].present?
		end
  	render json: products.results.to_json
  end
end