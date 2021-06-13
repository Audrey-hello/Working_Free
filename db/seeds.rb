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
user_2 = User.create!(email: 'user_2@gmail.com', password: '123456')
user_3 = User.create!(email: 'user_3@gmail.com', password: '123456')


  offices = [{ address: '14 rue Crespin du Gast', title: 'Le Wagon', price: 25, description: 'Located near ESCP, quiet street with natural light.', user: user_1, capacity: 60},{ address: '16 villa Gaudelet, 75011 Paris', title: 'Le Perchoir', price: 25, description: 'High ceiling, bright, vibrant office space', user: user_1, capacity: 90},{ address: '64-66 rue des archives, 75003 Paris', title: 'Wework marais', price: 40, description: 'workstations in openspace', user: user_2, capacity: 150},{ address: '5 tour saint jacques, 75005 Paris', title: 'OpenSpace', price: 35, description: 'Workstations in openspace', user: user_2, capacity: 60},{ address: 'Rue du Cloître Saint-Merri, 75004 Paris', title: 'FlexWork', price: 19, description: 'workstations in openspace', user: user_2, capacity: 20}]

  photo_offices = ["https://res.cloudinary.com/mathieuchap/image/upload/v1621379298/reussir-un-entretien-en-startup-ce-que-les-fondateurs-attendent-de-vous_bjygao.jpg", "https://res.cloudinary.com/mathieuchap/image/upload/v1621379298/photo-73620547-029_q6qwh5.jpg", "https://res.cloudinary.com/mathieuchap/image/upload/v1621379297/coworking-valeurs_lq3il5.jpg", "https://res.cloudinary.com/mathieuchap/image/upload/v1621379298/PHOTO-espace-re%CC%81union_sx1fxe.jpg","https://res.cloudinary.com/mathieuchap/image/upload/v1621379298/open-space-moderne-entreprise-espace-detente-cool-paris._tuumkz.jpg"]


  offices.each_with_index do |office, index|
    file = URI.open(photo_offices[index])
    card_office = Office.create!(office)
    card_office.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  end


   offices_two = [{ address: "14 rue Crespin du Gast, 75011 Paris", title: "Le Wagon", price: 23, description: "Notre immeuble est situé en plein quartier des Batignolles. Bien desservi par les transports et proche de nombreux commerces ce qui en fait un emplacement de choix pour vos bureaux.", user: user_1, capacity: 25},{ address: "20 rue Jean-Baptiste Pigalle, 75009 Paris", title: "Trinité", price: 578, description: "Classé monument historique, notre immeuble se situe non loin de la Gare Saint-Lazare et du quartier d'affaires d'Opéra. Un emplacement de choix pour y installer son entreprise. L'espace a la chance de bénéficier d'un superbe patio central, idéal pour se détendre ou organiser une réunion informelle.", user: user_1, capacity: 5},{ address: "350 rue de Vaugirard, 75015 Paris", title: "Vaugirard", price: 545, description: "Notre immeuble est situé à proximité du métro Convention, du périphérique et à deux pas du Parc des Expositions. Ce qui en fait un emplacement idéal pour y installer votre entreprise. Vous trouverez également une densité et une diversité de commerces impressionnantes à moins de 100m à la ronde.", user: user_3, capacity: 150},{ address: "111 rue Cardinet, 75017 Paris", title: "Cardinet", price: 35, description: "Notre espace de 850m2 est situé en plein quartier des Batignolles, proche de la piétonnière rue de Levis, cet espace est très bien desservi par les transports (métro Malesherbes et Pont Cardinet) et proche de nombreux commerces ce qui en fait un emplacement de choix pour vos bureaux.", user: user_3, capacity: 10},{ address: "207 rue de Bercy, 75012 Paris", title: "Wojo", price: 685, description: "À moins de 5 minutes des quais de la gare de Lyon, au cœur de Paris 12e, ce Wojo à l’ambiance chaleureuse est dédié au calme. En plus de ses bureaux, coworking et salles de réunion, vous aimerez prendre le temps de profiter de la terrasse végétalisée, sans oublier les salons, coins cuisine ou salle de billard. ​Bon à savoir : tous lumineux, certains bureaux privatifs ont vue sur la Tour de l'horloge ! Passez vite nous voir, on vous fait visiter ! À très bientôt !", user: user_3, capacity: 20}]

    offices_two.each_with_index do |office, index|
    file = URI.open(photo_offices[index])
    card_office = Office.create!(office)
    card_office.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  end
