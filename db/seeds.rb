# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Office.destroy_all
User.destroy_all

user_1 = User.create(email: 'user_1@gmail.com', password: '123456')
user_2 = User.create!(email: 'user_2@gmail.com', password: '456789')


  offices = [{ address: '14 rue Crespin du Gast', title: 'Le Wagon', price: '25€', description: '60 workstations in openspace', user: user_1},{ address: '16 villa gaudelet ,75011 Paris', title: 'Le Wagon', price: '25€', description: '90 workstations in openspace', user: user_1},{ address: '64-66 rue des archives ,75003 Paris', title: 'wework coeur marais', price: '40€', description: '150 workstations in openspace', user: user_2},{ address: 'tour saint jacques ,750 Paris', title: 'openspace', price: '35€', description: '60 workstations in openspace', user: user_2},{ address: 'Rue du Cloître Saint-Merri ,75004 Paris', title: 'workingflex', price: '20€', description: '20 workstations in openspace', user: user_2}]

  photo_offices = ["https://res.cloudinary.com/dv6ax1ttq/image/upload/v1621421558/benjamin_r3h21n.jpg", "https://res.cloudinary.com/dv6ax1ttq/image/upload/v1621421558/BigOffice_phc5bv.jpg", "https://res.cloudinary.com/dv6ax1ttq/image/upload/v1621421558/annie_fvzqvt.jpg", "https://res.cloudinary.com/dv6ax1ttq/image/upload/v1621421558/bantersnaps_mj6xdv.jpg", "https://res.cloudinary.com/dv6ax1ttq/image/upload/v1621421558/chalo-garcia_cca6uz.jpg"]


  offices.each_with_index do |office, index|
    file = URI.open(photo_offices[index])
    card_office = Office.create!(office)
    card_office.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  end
