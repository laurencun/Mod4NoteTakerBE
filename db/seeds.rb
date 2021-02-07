require 'faker'

# User.delete_all
# Todo.delete_all

User.create(username:'Lauren_Cun', password: 'password')

5.times do 
    User.create(
        username: Faker::Name.name,
        password: Faker::Lorem.word
    )

end

User.all.each do |user| 
    5.times do 
        Todo.create(
            title: Faker::Lorem.sentence(word_count: 3),
            content: Faker::Lorem.sentence(word_count: 12),
            completed: false,
            starred: false,
            user_id: user.id
        )
    end
end