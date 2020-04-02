# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

contents = [
  'Lorem ipsum dolor sit amet.',
  'Consectetur adipisicing elit, sed do eiusmod tempor incididunt.',
  'Labore et dolore magna aliqua.',
  'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.',
  'Excepteur sint occaecat cupidatat non proident.'
]

puts 'Deleting all articles...'
Article.delete_all

unless ENV['COUNT']

  puts 'Creating articles...'
  %w[One Two Three Four Five].each_with_index do |title, i|
    Article.create title: title, content: contents[i], published_on: i.days.ago.utc
  end

else

  print 'Generating articles...'
  (1..ENV['COUNT'].to_i).each_with_index do |title, i|
    Article.create title: "Title #{title}", content: 'Lorem ipsum dolor', published_on: i.days.ago.utc
    print '.' if (i % ENV['COUNT'].to_i/10).zero?
  end
  puts "\n"

end
