# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
 users=User.create([{username: "asmaa"},{username: "tim"}])

 artworks=Artwork.create([{title: "drawwing",image_url: "http/www.google.com" ,artist_id:1},{title: "random",image_url: "google.com" ,artist_id:2}])

 artwork_shares=ArtworkShare.create([{artwork_id:1 ,viewer_id:2}])

 comments=Comment.create([{body: "hello" ,
 author_id: 2 , artwork_id: 1 }])