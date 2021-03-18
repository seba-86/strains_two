# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


['juan', 'andrea', 'leon', 'andres', 'natalia', 'camilo', 'sebastian', 'jorge'].each do |name|
    User.create email: "#{name}@mail.com", password: '123123', admin: false
end
    puts 'Users has been created'
    
['peter'].each do |name|
    User.create email: "#{name}@mail.com", password: '123123', admin: true
end
    
    puts 'Admin has been created'
    
['Cabernet Sauvignon', 'Merlot', 'Pinot', 'Otra Cepa'].each do |name|
    Strain.create name: name
end
    
    puts 'Strains has been created'