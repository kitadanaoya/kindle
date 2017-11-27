# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#ユーザとハイライトのデータを作成。
#一旦手入力は消す
User.delete_all
Highlight.delete_all

#ユーザの作成
3.times do |i|
  i += 1
  user = User.create(
    email: "user#{i}@example.com",
    password: 'password'
  )
  
  #ユーザはハイライトを持つ
  3.times do |j|
    j += 1
    Highlight.create(
      content: "コンテンツ　その#{j}"  
    )
    
    Like.create(highlight_id: j, user_id: i)
  end
end
