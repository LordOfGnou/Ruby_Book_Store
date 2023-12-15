# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Book.destroy_all
Book.reset_pk_sequence

Book.create(
   [
      {
         title: 'Martine decouvre Jean',
         year: 1995
      },
      {
         title: 'Jean a la piscine avec Tonton',
         year: 2007
      },
      {
         title: 'Le petit Nicolas',
         year: 1959
      },
      {
         title: 'La Horde du Contre-Vent',
         year: 2004
      },
      {
         title: "Bart ou chroniques d'un cretin trouillard qui devait sauver le monde",
         year: 2010
      },
   ]
)