# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Child.create([
    {name: 'Jacob', status:'Active', pictures:['no pictures yet'], documents:['no docs yet'], user_id: 3 },
    {name: 'Aalyiah', status:'inActive', pictures:['no pictures yet'], documents:['no docs yet'], user_id: 1 }
])

Messageboard.create([
    {subject: 'test message', content: 'Hello world.', status: 'Active'}
])