# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Drivers
user_driver_1 = User.create(email: "driver1@test.com", password: "password", password_confirmation: "password")
user_driver_2 = User.create(email: "driver2@test.com", password: "password", password_confirmation: "password")
user_driver_3 = User.create(email: "driver3@test.com", password: "password", password_confirmation: "password")

# Creates passengers
user_passenger_1 = User.create(email: "passenger1@test.com", password: "password", password_confirmation: "password")
user_passenger_2 = User.create(email: "passenger2@test.com", password: "password", password_confirmation: "password")
user_passenger_3 = User.create(email: "passenger3@test.com", password: "password", password_confirmation: "password")
user_passenger_4 = User.create(email: "passenger4@test.com", password: "password", password_confirmation: "password")
user_passenger_5 = User.create(email: "passenger5@test.com", password: "password", password_confirmation: "password")
user_passenger_6 = User.create(email: "passenger6@test.com", password: "password", password_confirmation: "password")

# Create Driver/Passengers
user_driver_passenger_1 = User.create(email: "driverpassenger1@test.com", password: "password", password_confirmation: "password")
user_driver_passenger_2 = User.create(email: "driverpassenger2@test.com", password: "password", password_confirmation: "password")
user_driver_passenger_3 = User.create(email: "driverpassenger3@test.com", password: "password", password_confirmation: "password")
user_driver_passenger_4 = User.create(email: "driverpassenger4@test.com", password: "password", password_confirmation: "password")
user_driver_passenger_5 = User.create(email: "driverpassenger5@test.com", password: "password", password_confirmation: "password")
user_driver_passenger_6 = User.create(email: "driverpassenger6@test.com", password: "password", password_confirmation: "password")

# Creating cars for drivers
driver_1_car_1 =  user_driver_1.cars.create(registratio: "2012-12-12", brand: "Toyota", model: "Corolla", year: "2012", seats: 4)
driver_1_car_2 = user_driver_1.cars.create(registratio: "2012-12-12", brand: "Toyota", model: "Yaris", year: "2011", seats: 4)
driver_2_car_1 = user_driver_2.cars.create(registratio: "2000-01-12", brand: "Renault", model: "Megane", year: "2012", seats: 4)
driver_2_car_2 = user_driver_2.cars.create(registratio: "2000-01-12", brand: "Renault", model: "Megane Sport", year: "2012", seats: 4)
driver_3_car = user_driver_3.cars.create(registratio: "1999-05-02", brand: "BMW", model: "X3", year: "2012", seats: 4)

# Creating cars for driver passengers
driver_passenger_1_car = user_driver_passenger_1.cars.create(registratio: "2002-01-10", brand: "Audi", model: "A4", year: "2002", seats: 4)
driver_passenger_2_car = user_driver_passenger_2.cars.create(registratio: "2001-01-10", brand: "Seat", model: "Ibiza", year: "2001", seats: 4)
driver_passenger_3_car = user_driver_passenger_3.cars.create(registratio: "2001-09-10", brand: "Mini", model: "Couper", year: "2001", seats: 4)
driver_passenger_4_car = user_driver_passenger_4.cars.create(registratio: "2001-09-10", brand: "Citroen", model: "C3", year: "2001", seats: 4)
driver_passenger_5_car = user_driver_passenger_5.cars.create(registratio: "2001-09-10", brand: "Mazda", model: "MX", year: "2001", seats: 4)
driver_passenger_6_car = user_driver_passenger_6.cars.create(registratio: "2001-09-10", brand: "BMW", model: "M3", year: "2001", seats: 4)

# Creating cities
las_palmas = City.create(name: "Las Palmas")
telde = City.create(name: "Telde")
valsequillo = City.create(name: "Valsequillo")
maspalomas = City.create(name: "Maspalomas")
vecindario = City.create(name: "Vecindario")
arinaga = City.create(name: "Arinanga")
galdar = City.create(name: "Galdar")
agaete = City.create(name: "Agaete")
puerto_rico = City.create(name: "Puerto Rico")
mogan = City.create(name: "Mogan")

# Creating university "cities"
campus_tafira = City.create(name: "Campus Tafira")
campus_obelisco = City.create(name: "Campus Obelisco")
campus_san_cristobal = City.create(name: "Campus San Cristobal")

# Creating trips for drivers
driver_1_trip_1 = driver_1_car_1.trips.create(departure_time: "2018-05-13 08:00:00",arrival_time:"2018-05-13 08:30:00", car: driver_1_car_1, city_origin_id: las_palmas, city_destination_id: campus_tafira)
driver_1_trip_2 = driver_1_car_1.trips.create(departure_time: "2018-05-14 08:00:00",arrival_time:"2018-05-14 08:30:00", car: driver_1_car_1, city_origin_id: valsequillo, city_destination_id: campus_tafira)
driver_1_trip_3 = driver_1_car_2.trips.create(departure_time: "2018-05-15 08:00:00",arrival_time:"2018-05-15 08:30:00", car: driver_1_car_2, city_origin_id: las_palmas, city_destination_id: campus_tafira)

driver_2_trip_1 = driver_2_car_1.trips.create(departure_time: "2018-05-13 10:00:00",arrival_time:"2018-05-13 10:30:00", car: driver_2_car_1, city_origin_id: telde, city_destination_id: campus_tafira)
driver_2_trip_2 = driver_2_car_1.trips.create(departure_time: "2018-05-14 10:00:00",arrival_time:"2018-05-14 10:30:00", car: driver_2_car_1, city_origin_id: telde, city_destination_id: campus_tafira)
driver_2_trip_3 = driver_2_car_2.trips.create(departure_time: "2018-05-15 10:00:00",arrival_time:"2018-05-15 10:30:00", car: driver_2_car_2, city_origin_id: telde, city_destination_id: campus_tafira)

driver_3_trip_1 = driver_3_car.trips.create(departure_time: "2018-05-15 07:00:00",arrival_time:"2018-05-15 08:00:00", car: driver_3_car, city_origin_id: mogan, city_destination_id: campus_san_cristobal)
driver_3_trip_2 = driver_3_car.trips.create(departure_time: "2018-05-16 07:00:00",arrival_time:"2018-05-15 08:00:00", car: driver_3_car, city_origin_id: mogan, city_destination_id: campus_san_cristobal)

driver_passenger_1_car_trip_1 = driver_passenger_1_car.trips.create(departure_time: "2018-05-05 07:00:00",arrival_time:"2018-05-05 08:00:00", car: driver_passenger_1_car, city_origin_id: mogan, city_destination_id: campus_obelisco)

driver_passenger_2_car_trip_1 = driver_passenger_2_car.trips.create(departure_time: "2018-05-06 07:00:00",arrival_time:"2018-05-06 08:00:00", car: driver_passenger_2_car, city_origin_id: agaete, city_destination_id: campus_obelisco)

driver_passenger_3_car_trip_1 = driver_passenger_3_car.trips.create(departure_time: "2018-05-03 08:00:00",arrival_time:"2018-05-03 08:30:00", car: driver_passenger_3_car, city_origin_id: galdar, city_destination_id: campus_tafira)

driver_passenger_4_car_trip_1 = driver_passenger_4_car.trips.create(departure_time: "2018-05-04 08:00:00",arrival_time:"2018-05-04 08:30:00", car: driver_passenger_4_car, city_origin_id: arinaga, city_destination_id: campus_tafira)

driver_passenger_5_car_trip_1 = driver_passenger_5_car.trips.create(departure_time: "2018-05-02 07:00:00",arrival_time:"2018-05-02 08:00:00", car: driver_passenger_5_car, city_origin_id: maspalomas, city_destination_id: campus_tafira)

driver_passenger_6_car_trip_1 = driver_passenger_6_car.trips.create(departure_time: "2018-05-01 07:00:00",arrival_time:"2018-05-01 08:00:00", car: driver_passenger_6_car, city_origin_id: puerto_rico, city_destination_id: campus_tafira)
driver_passenger_6_car_trip_2 = driver_passenger_6_car.trips.create(departure_time: "2018-05-02 07:00:00",arrival_time:"2018-05-02 08:00:00", car: driver_passenger_6_car, city_origin_id: vecindario, city_destination_id: campus_tafira)


# Creating passengers

Passenger.create(trip: driver_1_trip_1, user: user_passenger_1)
Passenger.create(trip: driver_1_trip_1, user: user_passenger_2)
Passenger.create(trip: driver_1_trip_1, user: user_passenger_3)

Passenger.create(trip: driver_1_trip_2, user: user_passenger_4)
Passenger.create(trip: driver_1_trip_2, user: user_passenger_5)

Passenger.create(trip: driver_2_trip_1, user: user_passenger_6)
Passenger.create(trip: driver_2_trip_1, user: user_driver_passenger_1)

Passenger.create(trip: driver_2_trip_2, user: user_driver_passenger_1)
Passenger.create(trip: driver_2_trip_2, user: user_driver_passenger_2)
Passenger.create(trip: driver_2_trip_2, user: user_driver_passenger_3)

Passenger.create(trip: driver_1_trip_3, user: user_driver_passenger_4)
Passenger.create(trip: driver_1_trip_3, user: user_driver_passenger_5)
Passenger.create(trip: driver_1_trip_3, user: user_driver_passenger_6)

Passenger.create(trip: driver_2_trip_3, user: user_driver_passenger_1)
Passenger.create(trip: driver_2_trip_3, user: user_driver_passenger_2)

Passenger.create(trip: driver_3_trip_1, user: user_driver_passenger_1)
Passenger.create(trip: driver_3_trip_1, user: user_driver_passenger_2)
Passenger.create(trip: driver_3_trip_1, user: user_passenger_2)

Passenger.create(trip: driver_3_trip_2, user: user_passenger_2)
Passenger.create(trip: driver_3_trip_2, user: user_passenger_3)
Passenger.create(trip: driver_3_trip_2, user: user_passenger_4)

Passenger.create(trip: driver_passenger_1_car_trip_1, user: user_passenger_1)
Passenger.create(trip: driver_passenger_1_car_trip_1, user: user_passenger_2)

Passenger.create(trip: driver_passenger_2_car_trip_1, user: user_passenger_4)
Passenger.create(trip: driver_passenger_2_car_trip_1, user: user_passenger_3)
Passenger.create(trip: driver_passenger_2_car_trip_1, user: user_passenger_5)

Passenger.create(trip: driver_passenger_3_car_trip_1, user: user_passenger_1)
Passenger.create(trip: driver_passenger_3_car_trip_1, user: user_passenger_5)
Passenger.create(trip: driver_passenger_3_car_trip_1, user: user_passenger_6)

Passenger.create(trip: driver_passenger_4_car_trip_1, user: user_passenger_1)
Passenger.create(trip: driver_passenger_4_car_trip_1, user: user_passenger_2)

Passenger.create(trip: driver_passenger_5_car_trip_1, user: user_passenger_1)

Passenger.create(trip: driver_passenger_6_car_trip_1, user: user_passenger_6)
Passenger.create(trip: driver_passenger_6_car_trip_1, user: user_passenger_5)

Passenger.create(trip: driver_passenger_6_car_trip_2, user: user_passenger_3)
Passenger.create(trip: driver_passenger_6_car_trip_2, user: user_passenger_2)
Passenger.create(trip: driver_passenger_6_car_trip_2, user: user_passenger_6)
