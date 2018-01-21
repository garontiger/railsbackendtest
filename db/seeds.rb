	
restaurant = Restaurant.create(
	{
		name: "Bob's Restaurant#2",
		type: "Local Cuisine"
	}
)
5.times do
	restaurant.dishes.create({name: Faker::App.name})
end

restaurant2 = Restaurant.create(
	{
		name: "The Rice Shop",
		type: "Chinese"
	}
)
5.times do
	restaurant2.dishes.create({name: Faker::App.name})
end

