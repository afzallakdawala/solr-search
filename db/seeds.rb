require 'csv'

def trim(text)
	return text.strip rescue text
end

def encode(text)
	text.force_encoding('ASCII-8BIT').encode('UTF-8', :invalid => :replace, :undef => :replace, :replace => '?') rescue text
end

Product.delete_all
products = []
CSV.foreach("public/products.csv") do |row|
	products << {name: encode(trim(row[0])), description: encode(trim(row[1])), category: encode(trim(row[2])), location: encode(trim(row[3]))}
end
Product.create!(products)