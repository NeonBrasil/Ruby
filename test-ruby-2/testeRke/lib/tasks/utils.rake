namespace :utils do
  desc "Popular a tabela de usuários"
  task setup_user: :environment do
      10.times do |i|
        user_name = Faker::Name.name
        user_email = Faker::Internet.email
        user = "#{user_name} - #{user_email}"
        puts "Cadastrando o #{user}"
        User.create(name: user_name, email: user_email)
    end
  end

end
