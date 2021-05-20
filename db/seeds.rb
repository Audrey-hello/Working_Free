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


  offices = [{ address: '14 rue Crespin du Gast', title: 'Le Wagon', price: 25, description: 'workstations in openspace', user: user_1, capacity: 60},{ address: '16 villa gaudelet, 75011 Paris', title: 'Le Perchoir', price: 25, description: 'workstations in openspace', user: user_1, capacity: 90},{ address: '64-66 rue des archives, 75003 Paris', title: 'Wework marais', price: 40, description: 'workstations in openspace', user: user_2, capacity: 150},{ address: '5 tour saint jacques, 75005 Paris', title: 'OpenSpace', price: 35, description: 'workstations in openspace', user: user_2, capacity: 60},{ address: 'Rue du Cloître Saint-Merri, 75004 Paris', title: 'FlexWork', price: 19, description: 'workstations in openspace', user: user_2, capacity: 20}]

  photo_offices = ["https://res.cloudinary.com/mathieuchap/image/upload/v1621379298/reussir-un-entretien-en-startup-ce-que-les-fondateurs-attendent-de-vous_bjygao.jpg", "https://res.cloudinary.com/mathieuchap/image/upload/v1621379298/photo-73620547-029_q6qwh5.jpg", "https://res.cloudinary.com/mathieuchap/image/upload/v1621379297/coworking-valeurs_lq3il5.jpg", "https://res.cloudinary.com/mathieuchap/image/upload/v1621379298/PHOTO-espace-re%CC%81union_sx1fxe.jpg","https://res.cloudinary.com/mathieuchap/image/upload/v1621379298/open-space-moderne-entreprise-espace-detente-cool-paris._tuumkz.jpg"]


  offices.each_with_index do |office, index|
    file = URI.open(photo_offices[index])
    card_office = Office.create!(office)
    card_office.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  end
