# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
  Blog.create!(
    title: "Blog no: #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
    In facilisis elit ut ultrices sodales. Duis et lorem eu dolor fermentum volutpat.
    Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
    Cras dolor mi, maximus in sodales at, scelerisque in ex. Praesent suscipit arcu ut interdum commodo.
    Suspendisse nunc libero, tincidunt nec luctus eu, tincidunt sit amet orci. Sed tincidunt molestie ligula,
    non dictum eros feugiat non."
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Skill no: #{skill}",
    percent_contri: "Percentage : #{skill}"
  )
end

puts "5 skills here"

9.times do |portfolio|
  WorkPortfolio.create!(
    title: "Portfolio no #{portfolio}",
    subtitle: "Pata nahi",
    body: "maximus in sodales at, scelerisque in ex. Praesent suscipit arcu ut interdum commodo.
    Suspendisse nunc libero",
    main_image: "http://via.placeholder.com/350x700",
    thumb_image: "http://via.placeholder.com/50x150"
  )
end
