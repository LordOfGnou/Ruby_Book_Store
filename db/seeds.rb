# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
BookAuthor.destroy_all
BookAuthor.reset_pk_sequence

BookCategory.destroy_all
BookCategory.reset_pk_sequence

Book.destroy_all
Book.reset_pk_sequence

Author.destroy_all
Author.reset_pk_sequence

Category.destroy_all
Category.reset_pk_sequence

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


Author.create(
   [
      {
         name: "Alain Damasio"
      },
      {
         name: "Rene Gosciny"
      },
      {
         name: "Jean Justine"
      },
      {
         name: "Dominic Barker"
      }
   ]
)

BookAuthor.create(
   [
      {
         book_id: 1,
         author_id: 3
      },
      {
         book_id: 2,
         author_id: 3
      },
      {
         book_id: 3,
         author_id: 2
      },
      {
         book_id: 4,
         author_id: 1
      },
      {
         book_id: 5,
         author_id: 4
      },
   ]
)

Category.create (
   [
      {
         name: "Child"
      },
      {
         name: "Fantastic"
      },
      {
         name: "Education"
      },
      {
         name: "Horror"
      },
      {
         name: "Thriller"
      },
      {
         name: "History"
      },
      {
         name: "Novel"
      }
   ]
)

BookCategory.create (
   [
      {
         book_id: 1,
         category_id: 1
      },
      {
         book_id: 1,
         category_id: 3
      },
      {
         book_id: 1,
         category_id: 4
      },
      {
         book_id: 2,
         category_id: 1
      },
      {
         book_id: 2,
         category_id: 3
      },
      {
         book_id: 3,
         category_id: 1
      },
      {
         book_id: 3,
         category_id: 3
      },
      {
         book_id: 3,
         category_id: 7
      },
      {
         book_id: 4,
         category_id: 2
      },
      {
         book_id: 4,
         category_id: 7
      },
      {
         book_id: 5,
         category_id: 1
      },
      {
         book_id: 5,
         category_id: 2
      },
      {
         book_id: 5,
         category_id: 7
      }
   ]
)