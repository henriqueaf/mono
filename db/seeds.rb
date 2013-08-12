# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Criar Coordenador ADMIN
puts "############################## Criando ADMIN ##############################"
user = User.new(:email => 'henrique_af1@msn.com', :name => 'Henrique Almeida', :user_type => User::TYPES[:manager])
user.update_password('1234')
user.build_manager(:address => 'Filomeno Gomes')


if user.save
	puts "ADMIN criado com sucesso"
else
	puts "Erro ao criar admin: "
	puts user.errors.full_messages
end
