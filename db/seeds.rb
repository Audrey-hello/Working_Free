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


  offices = [{ address: '14 rue Crespin du Gast', title: 'Le Wagon', price: '25€', description: '60 workstations in openspace', user: user_1},{ address: '16 villa gaudelet, 75011 Paris', title: 'Le Perchoir', price: '25€', description: '90 workstations in openspace', user: user_1},{ address: '64-66 rue des archives, 75003 Paris', title: 'Wework marais', price: '40€', description: '150 workstations in openspace', user: user_2},{ address: '5 tour saint jacques, 75005 Paris', title: 'OpenSpace', price: '35€', description: '60 workstations in openspace', user: user_2},{ address: 'Rue du Cloître Saint-Merri, 75004 Paris', title: 'FlexWork', price: '19€', description: '20 workstations in openspace', user: user_2}]

  photo_offices = ["https://res.cloudinary.com/drojktwel/image/upload/v1621459320/01_aldente-patioentree2_sbpiit.jpg", "https://res.cloudinary.com/drojktwel/image/upload/v1621459320/08_aldente-studio_et_piscine_0_mba10k.jpg", "https://res.cloudinary.com/drojktwel/image/upload/v1621459685/AD1019_DISC_PAULIN_BEN_MOORE_02_m2s1rb.jpg", "https://res.cloudinary.com/drojktwel/image/upload/v1621459320/14_aldente-jardin_d_hiver1_xorsby.jpg"]


  offices.each_with_index do |office, index|
    file = URI.open(photo_offices[index])
    card_office = Office.create!(office)
    card_office.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  end
