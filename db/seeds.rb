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


  offices = [{ address: '14 rue Crespin du Gast, 75011 Paris', title: 'Le Wagon', price: '25€', description: '60 workstations in OpenSpace', user: user_1},{ address: '16 villa gaudelet, 75011 Paris', title: 'Le Perchoir', price: '25€', description: '90 workstations in OpenSpace', user: user_1},{ address: '64-66 rue des archives, 75003 Paris', title: 'Wework marais', price: '40€', description: '150 workstations in OpenSpace', user: user_2},{ address: '5 tour saint jacques, 75005 Paris', title: 'OpenSpace', price: '35€', description: '60 workstations in OpenSpace', user: user_2},{ address: 'Rue du Cloître Saint-Merri, 75004 Paris', title: 'FlexWork', price: '19€', description: '20 workstations in OpenSpace', user: user_2},{ address: '40 rue du Louvre, 75001 Paris', title: 'Spaces Les Halles', price: '23€', description: '120 workstations in OpenSpace', user: user_1},{ address: '54 avenue Hoche, 75008 Paris', title: 'Spaces Etoile', price: '39€', description: '120 workstations in OpenSpace', user: user_1},{ address: '40 rue du Louvre, 75001 Paris', title: 'Spaces Les Halles', price: '23€', description: '120 workstations in OpenSpace', user: user_1},{ address: '34 Rue de la Folie Méricourt, 75011 Paris', title: 'Coworking Imprimerie', price: '15€', description: '45 workstations in OpenSpace', user: user_1},{ address: '78 Avenue de la République, 75011 Paris', title: 'Other.Space', price: '15€', description: '75 workstations in OpenSpace', user: user_1},{ address: '48 Rue du Château d eau, 75010 Paris', title: 'Deskopolitan', price: '15€', description: '40 workstations in OpenSpace', user: user_1},{ address: '62 Rue Jean-Jacques Rousseau, 75001 Paris', title: 'Cowork', price: '28€', description: '45 workstations in OpenSpace', user: user_1},{ address: ' 9 Rue de Savoie, 75006 Paris', title: 'La Bulle', price: '24€', description: '17 workstations in OpenSpace', user: user_1}]

  photo_offices = ["https://res.cloudinary.com/drojktwel/image/upload/v1621459320/01_aldente-patioentree2_sbpiit.jpg", "https://res.cloudinary.com/drojktwel/image/upload/v1621459320/08_aldente-studio_et_piscine_0_mba10k.jpg", "https://res.cloudinary.com/drojktwel/image/upload/v1621459685/AD1019_DISC_PAULIN_BEN_MOORE_02_m2s1rb.jpg", "https://res.cloudinary.com/drojktwel/image/upload/v1621459320/14_aldente-jardin_d_hiver1_xorsby.jpg"]


  offices.each_with_index do |office, index|
    file = URI.open(photo_offices[index])
    card_office = Office.create!(office)
    card_office.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  end
