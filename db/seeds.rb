require 'faker'

User.delete_all
Todo.delete_all

15.times do 
    User.create(
        username: Faker::Name.name
    )

end

User.all.each do |user| 
    10.times do 
        Todo.create(
            title: Faker::Lorem.sentence(word_count: 3),
            content: Faker::Lorem.sentence(word_count: 12),
            completed: false,
            user_id: user.id
        )
    end
end