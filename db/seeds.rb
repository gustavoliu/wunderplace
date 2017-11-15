# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
  address: 'Rua do Sol, 140',
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
  address: 'Rua dos Cactos, 100',
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
  address: 'Rua das Margaridas, 32',
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
  address: 'Rua das Rosas, 70',
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

seed5.photo_urls = ["https://i.pinimg.com/originals/75/da/7a/75da7a9fdf15600043a21305dd45ac96.jpg1"]
seed5.save!

seed6 = Room.create!(
  address: 'Rua das Feiras, 1032',
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
# {
#   address:,
#   type: ,
#   photos: ,
#   description: ,
#   name: ,
#   air_conditioning: ,
#   secretary: ,
#   psychology_couch: ,
#   cleaning: ,
#   smoking_allowed: ,
#   price_centavos:
# }

#   create_table "rooms", force: :cascade do |t|
#     t.string "address"
#     t.string "type" ['Psicologia', 'Odontologia', 'Nutrição', 'Psiquiatria']
#     t.string "photos"
#     t.text "description"
#     t.string "name"
#     t.integer "user_id"
#     t.boolean "published"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.boolean "air_conditioning"
#     t.boolean "secretary"
#     t.boolean "psychology_couch"
#     t.boolean "cleaning"
#     t.boolean "smoking_allowed"
#     t.integer "price_centavos", default: 0, null: false
#     t.string "price_currency", default: "BRL", null: false

puts 'Finished!'
