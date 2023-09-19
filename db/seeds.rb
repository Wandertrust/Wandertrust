require 'factory_bot_rails'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

@user = User.create(name: 'Tori', email: "torienyart@gmail.com", password: "password1234", emergency_contact_name: "Joe", emergency_contact_phone: "518-932-2664", emergency_contact_relationship: "Partner")
@trip_1 = @user.trips.create(name: 'Ward Loop', start_time: "10/18/22 9:00AM", end_time: "10/18/22 2:00PM", gpx_file: 'ward_loop.gpx')
@trip_2 = @user.trips.create(name: 'La Sal Loop', start_time: DateTime.now - 1, end_time: DateTime.now + 1, gpx_file: 'la_sal_loop.gpx')
@trip_3 = @user.trips.create(name: 'Skyline', start_time: DateTime.now + 1, end_time: DateTime.now + 2, gpx_file: 'skyline.gpx')
