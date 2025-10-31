class Restaurant
  attr_accessor :id, :name, :cuisine, :address, :phone, :rating

  @@restaurants = []
  @@next_id = 1

  def initialize(name, cuisine, address, phone, rating = 0)
    @id = @@next_id
    @@next_id += 1
    @name = name
    @cuisine = cuisine
    @address = address
    @phone = phone
    @rating = rating
  end

  # Add new restaurant
  def self.add_restaurant(name, cuisine, address, phone, rating = 0)
    restaurant = Restaurant.new(name, cuisine, address, phone, rating)
    @@restaurants << restaurant
    puts "✅ Restaurant '#{name}' added successfully with ID: #{restaurant.id}"
    restaurant
  end

  # List all restaurants
  def self.list_restaurants
    if @@restaurants.empty?
      puts "No restaurants available."
    else
      puts "\n--- List of Restaurants ---"
      @@restaurants.each do |restaurant|
        restaurant.display_details
        puts "-" * 30
      end
    end
  end

  # Update a restaurant
  def self.update_restaurant(id, name: nil, cuisine: nil, address: nil, phone: nil, rating: nil)
    restaurant = @@restaurants.find { |r| r.id == id }
    if restaurant
      restaurant.name = name if name
      restaurant.cuisine = cuisine if cuisine
      restaurant.address = address if address
      restaurant.phone = phone if phone
      restaurant.rating = rating if rating
      puts "✅ Restaurant ID #{id} updated successfully."
      true
    else
      puts "❌ Restaurant with ID #{id} not found."
      false
    end
  end

  # Delete a restaurant
  def self.delete_restaurant(id)
    restaurant = @@restaurants.find { |r| r.id == id }
    if restaurant
      @@restaurants.delete(restaurant)
      puts "🗑️ Restaurant '#{restaurant.name}' with ID #{id} deleted successfully."
      true
    else
      puts "❌ Restaurant with ID #{id} not found."
      false
    end
  end

  # Find restaurant by ID
  def self.find_by_id(id)
    restaurant = @@restaurants.find { |r| r.id == id }
    if restaurant
      restaurant.display_details
      true
    else
      puts "❌ Restaurant with ID #{id} not found."
      false
    end
  end

  # Search restaurants by name
  def self.search_by_name(name)
    results = @@restaurants.select { |r| r.name.downcase.include?(name.downcase) }
    if results.empty?
      puts "No restaurants found with name containing '#{name}'."
    else
      puts "\n--- Search Results ---"
      results.each { |r| r.display_details; puts "-" * 30 }
    end
    results
  end

  # Instance method to display restaurant details
  def display_details
    puts "ID: #{@id}"
    puts "Name: #{@name}"
    puts "Cuisine: #{@cuisine}"
    puts "Address: #{@address}"
    puts "Phone: #{@phone}"
    puts "Rating: #{@rating}/5"
  end
end

# ---- TEST CRUD ----
r = Restaurant.new("RES1", "Italian", "Indore", "12345", 3)
puts "\nInitial restaurant:"
r.display_details

puts "\nAdding restaurants..."
Restaurant.add_restaurant("RES2", "Chinese", "Mumbai", "54321", 4)
Restaurant.add_restaurant("RES3", "Mexican", "Pune", "67890", 5)
Restaurant.add_restaurant("Bharat", "Indian", "Delhi", "11111", 4)

puts "\nListing all restaurants:"
Restaurant.list_restaurants

puts "\nSearching for 'Bharat':"
Restaurant.search_by_name("Bharat")

puts "\nUpdating restaurant ID 4..."
Restaurant.update_restaurant(4, name: "Bharat Bhavan", rating: 5)

puts "\nListing all restaurants after update:"
Restaurant.list_restaurants

puts "\nDeleting restaurant ID 4..."
Restaurant.delete_restaurant(4)

puts "\nListing all restaurants after deletion:"
Restaurant.list_restaurants
