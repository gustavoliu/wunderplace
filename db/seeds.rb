# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

puts 'Cleaning database...'
Room.destroy_all

puts 'Creating rooms...'

seed1 = Room.create!(
  address: 'Rua Mourato Coelho 1404',
  user_id: 1,
  type: 'Psicologia',
  photos: [],
  description: 'Agradável consultório, plenamente mobiliado, em ótima localização.',
  name: 'Excelente consultório para psicólogo',
  air_conditioning: true,
  secretary: true,
  psychology_couch: true,
  cleaning: true,
  smoking_allowed: false,
  price_centavos: 100.00
)

seed1.photo_urls = ["https://i.pinimg.com/564x/54/c8/8f/54c88f302d56af2b78df9aab1c02ecd3--sigmund-freud-batman.jpg",
"https://i.pinimg.com/originals/75/da/7a/75da7a9fdf15600043a21305dd45ac96.jpg"]
seed1.save!

seed2 = Room.create!(
  address: 'Avenida Paulista, 140',
  user_id: 1,
  type: 'Nutrição',
  photos: [],
  description: 'Excelente consultório, pronto para uso.',
  name: 'Ótimo consultório para nutricionista',
  air_conditioning: true,
  secretary: true,
  psychology_couch: false,
  cleaning: true,
  smoking_allowed: false,
  price_centavos: 80.00
)

seed2.photo_urls = ["http://xoio.de/wp-content/uploads/2013/10/Healthcarebrochure_Kimball_05.jpg"]
seed2.save!

seed3 = Room.create!(
  address: 'Avenida Lins de Vasconcelos, 1500',
  user_id: 1,
  type: 'Psiquiatria',
  photos: [],
  description: 'Boa oportunidade para psiquiatra',
  name: 'Tradicional clínica na zona norte.',
  air_conditioning: true,
  secretary: true,
  psychology_couch: true,
  cleaning: true,
  smoking_allowed: false,
  price_centavos: 120.00
)

seed3.photo_urls = ["https://i0.wp.com/www.gdcinteriors.com/wp-content/uploads/2015/02/Psychoanalytic-Space-9.jpg?ssl=1"]
seed3.save!

seed4 = Room.create!(
  address: 'Rua do Grito, 32',
  user_id: 1,
  type: 'Odontologia',
  photos: [],
  description: 'consultório odontológico para dividir',
  name: 'Consultório odontológico',
  air_conditioning: true,
  secretary: true,
  psychology_couch: false,
  cleaning: true,
  smoking_allowed: false,
  price_centavos: 90.00
)

seed4.photo_urls = ["https://i.pinimg.com/originals/49/b1/69/49b1699f6640768bdcee615a999af08e.jpg"]
seed4.save!

seed5 = Room.create!(
  address: 'Praça da Sé, 70',
  user_id: 1,
  type: 'Psicologia',
  photos: [],
  description: 'Espaço para dividir com psicanalista.',
  name: 'Consultório de psicanálise',
  air_conditioning: true,
  secretary: true,
  psychology_couch: true,
  cleaning: true,
  smoking_allowed: false,
  price_centavos: 100.00
)

seed5.photo_urls = ["https://i.pinimg.com/originals/75/da/7a/75da7a9fdf15600043a21305dd45ac96.jpg"]
seed5.save!

seed6 = Room.create!(
  address: 'Rua Harmonia, 560',
  user_id: 1,
  type: 'Psiquiatria',
  photos: [],
  description: 'Consultório médico em ótima localização',
  name: 'Consultório médico para dividir com psiquiatra.',
  air_conditioning: true,
  secretary: true,
  psychology_couch: false,
  cleaning: true,
  smoking_allowed: false,
  price_centavos: 90.00
)

seed6.photo_urls = ["https://i.ytimg.com/vi/5S5TFCR5g78/hqdefault.jpg"]

seed6.save!

seed7 = Room.create!(
  address: 'Avenida Goiás, 560',
  user_id: 1,
  type: 'Psiquiatria',
  photos: [],
  description: 'Consultório médico em ótima localização',
  name: 'Consultório médico para dividir com psiquiatra.',
  air_conditioning: true,
  secretary: true,
  psychology_couch: false,
  cleaning: true,
  smoking_allowed: false,
  price_centavos: 90.00
)

seed7.photo_urls = ["https://i0.wp.com/www.gdcinteriors.com/wp-content/uploads/2015/02/Psychoanalytic-Space-9.jpg?ssl=1"]
seed7.save!


seed8 = Room.create!(
  address: 'Moema',
  user_id: 1,
  type: 'Nutrição',
  photos: [],
  description: 'Consultório médico em ótima localização',
  name: 'Consultório médico para dividir com psiquiatra.',
  air_conditioning: true,
  secretary: true,
  psychology_couch: false,
  cleaning: true,
  smoking_allowed: false,
  price_centavos: 90.00
)

seed8.photo_urls = ["http://dinamica-de-sistemas.com/revista/1215v8.jpg"]
seed8.save!

seed9 = Room.create!(
  address: 'Praça Patricarca',
  user_id: 1,
  type: 'Odontologia',
  photos: [],
  description: 'Consultório médico em ótima localização',
  name: 'Consultório médico para dividir com psiquiatra.',
  air_conditioning: true,
  secretary: true,
  psychology_couch: false,
  cleaning: true,
  smoking_allowed: false,
  price_centavos: 90.00
)

seed9.photo_urls = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4NRCW-TORU2Dq-zW4xud3e48ZAMFc-NemwxIR54QvY66HmZ5Xuw"]
seed9.save!


puts 'Cleaning database...'
Room.destroy_all

puts 'Creating rooms...'

seed10 = Room.create!(
  address: 'Rua Mourato Coelho 1404',
  user_id: 1,
  type: 'Psicologia',
  photos: [],
  description: 'Agradável consultório, plenamente mobiliado, em ótima localização.',
  name: 'Excelente consultório para psicólogo',
  air_conditioning: true,
  secretary: true,
  psychology_couch: true,
  cleaning: true,
  smoking_allowed: false,
  price_centavos: 100.00
)

seed10.photo_urls = ["https://i.pinimg.com/564x/54/c8/8f/54c88f302d56af2b78df9aab1c02ecd3--sigmund-freud-batman.jpg",
"https://i.pinimg.com/originals/75/da/7a/75da7a9fdf15600043a21305dd45ac96.jpg"]
seed10.save!

seed11 = Room.create!(
  address: 'Avenida Paulista, 140',
  user_id: 1,
  type: 'Nutrição',
  photos: [],
  description: 'Excelente consultório, pronto para uso.',
  name: 'Ótimo consultório para nutricionista',
  air_conditioning: true,
  secretary: true,
  psychology_couch: false,
  cleaning: true,
  smoking_allowed: false,
  price_centavos: 80.00
)

seed11.photo_urls = ["http://xoio.de/wp-content/uploads/2013/10/Healthcarebrochure_Kimball_05.jpg"]
seed11.save!

seed12 = Room.create!(
  address: 'Avenida Lins de Vasconcelos, 1500',
  user_id: 1,
  type: 'Psiquiatria',
  photos: [],
  description: 'Boa oportunidade para psiquiatra',
  name: 'Tradicional clínica na zona norte.',
  air_conditioning: true,
  secretary: true,
  psychology_couch: true,
  cleaning: true,
  smoking_allowed: false,
  price_centavos: 120.00
)

seed12.photo_urls = ["https://i0.wp.com/www.gdcinteriors.com/wp-content/uploads/2015/02/Psychoanalytic-Space-9.jpg?ssl=1"]
seed12.save!

seed13 = Room.create!(
  address: 'Rua do Grito, 32',
  user_id: 1,
  type: 'Odontologia',
  photos: [],
  description: 'consultório odontológico para dividir',
  name: 'Consultório odontológico',
  air_conditioning: true,
  secretary: true,
  psychology_couch: false,
  cleaning: true,
  smoking_allowed: false,
  price_centavos: 90.00
)

seed13.photo_urls = ["https://i.pinimg.com/originals/49/b1/69/49b1699f6640768bdcee615a999af08e.jpg"]
seed13.save!

seed14 = Room.create!(
  address: 'Praça da Sé, 70',
  user_id: 1,
  type: 'Psicologia',
  photos: [],
  description: 'Espaço para dividir com psicanalista.',
  name: 'Consultório de psicanálise',
  air_conditioning: true,
  secretary: true,
  psychology_couch: true,
  cleaning: true,
  smoking_allowed: false,
  price_centavos: 100.00
)

seed14.photo_urls = ["https://i.pinimg.com/originals/75/da/7a/75da7a9fdf15600043a21305dd45ac96.jpg"]
seed14.save!

seed15 = Room.create!(
  address: 'Rua Harmonia, 560',
  user_id: 1,
  type: 'Psiquiatria',
  photos: [],
  description: 'Consultório médico em ótima localização',
  name: 'Consultório médico para dividir com psiquiatra.',
  air_conditioning: true,
  secretary: true,
  psychology_couch: false,
  cleaning: true,
  smoking_allowed: false,
  price_centavos: 90.00
)

seed15.photo_urls = ["https://i.ytimg.com/vi/5S5TFCR5g78/hqdefault.jpg"]

seed15.save!

seed16 = Room.create!(
  address: 'Avenida Goiás, 560',
  user_id: 1,
  type: 'Psiquiatria',
  photos: [],
  description: 'Consultório médico em ótima localização',
  name: 'Consultório médico para dividir com psiquiatra.',
  air_conditioning: true,
  secretary: true,
  psychology_couch: false,
  cleaning: true,
  smoking_allowed: false,
  price_centavos: 90.00
)

seed16.photo_urls = ["https://i0.wp.com/www.gdcinteriors.com/wp-content/uploads/2015/02/Psychoanalytic-Space-9.jpg?ssl=1"]
seed16.save!


seed17 = Room.create!(
  address: 'Moema',
  user_id: 1,
  type: 'Nutrição',
  photos: [],
  description: 'Consultório médico em ótima localização',
  name: 'Consultório médico para dividir com psiquiatra.',
  air_conditioning: true,
  secretary: true,
  psychology_couch: false,
  cleaning: true,
  smoking_allowed: false,
  price_centavos: 90.00
)

seed17.photo_urls = ["http://dinamica-de-sistemas.com/revista/1215v8.jpg"]
seed17.save!

seed18 = Room.create!(
  address: 'Praça Patricarca',
  user_id: 1,
  type: 'Odontologia',
  photos: [],
  description: 'Consultório médico em ótima localização',
  name: 'Consultório médico para dividir com psiquiatra.',
  air_conditioning: true,
  secretary: true,
  psychology_couch: false,
  cleaning: true,
  smoking_allowed: false,
  price_centavos: 90.00
)

seed18.photo_urls = ["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4NRCW-TORU2Dq-zW4xud3e48ZAMFc-NemwxIR54QvY66HmZ5Xuw"]
seed18.save!

puts 'Finished!'
