class Product < ActiveRecord::Base

	searchable do
    text :name, :description
    string :location
    string :category
  end

end
