Car.create([{ name: 'Fiat Uno 2009', brand: 'Fiat', model: 'Uno', manufacture: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y"), color: "Branco", kilometer: '100.243', board: 'NBB-0001', fipe: '13000,00', sinister: 1, status: 1 }])
Car.create([{ name: 'Ford Ka 2002',brand: 'Ford', model: 'Ka', manufacture: DateTime.strptime("09/14/2002 8:00", "%m/%d/%Y"), color: "Prata", kilometer: '140.112', board: 'NAA-0221', fipe: '6000,00', sinister: 1, status: 0 }])
Car.create([{ name: 'Honda Civic 2011',brand: 'Honda', model: 'Civic', manufacture: DateTime.strptime("02/14/2011 8:00", "%m/%d/%Y"), color: "Branco", kilometer: '40.203', board: 'AXS-3241', fipe: '26000,00', sinister: 1, status: 0 }])
Car.create([{ name: 'Peugeot 207 2006',brand: 'Peugeot', model: '207', manufacture: DateTime.strptime("02/14/2006 8:00", "%m/%d/%Y"), color: "Vermelho", kilometer: '13.100', board: 'AAS-5465', fipe: '16000,00', sinister: 1, status: 0 }])
Car.create([{ name: 'Audi A3 2004',brand: 'Audi', model: 'A3', manufacture: DateTime.strptime("02/14/2004 8:00", "%m/%d/%Y"), color: "Branco", kilometer: '60.565', board: 'EEY-3221', fipe: '19900,00', sinister: 1, status: 0 }])
Car.create([{ name: 'Nissan Frontier 2013', brand: 'Nissan', model: 'Frontier', manufacture: DateTime.strptime("02/14/2013 8:00", "%m/%d/%Y"), color: "Preto", kilometer: '110.565', board: 'ASD-6541', fipe: '52900,00', sinister: 1, status: 0 }])
Car.create([{ name: 'Chery Tiggo 2011', brand: 'Chery', model: 'Tiggo', manufacture: DateTime.strptime("02/14/2011 8:00", "%m/%d/%Y"), color: "Rosa", kilometer: '25.565', board: 'ESA-3214', fipe: '12200,00', sinister: 1, status: 0 }])
Car.create([{ name: 'Citroen C3 2014',brand: 'Citroen', model: 'C3', manufacture: DateTime.strptime("02/14/2014 8:00", "%m/%d/%Y"), color: "Vermelho", kilometer: '4.565', board: 'YUE-7895', fipe: '16900,00', sinister: 0, status: 0 }])
Car.create([{ name: 'Ferrari California 2017',brand: 'Ferrari', model: 'California', manufacture: DateTime.strptime("02/14/2017 8:00", "%m/%d/%Y"), color: "Vermelho", kilometer: '1.235', board: 'AAA-1234', fipe: '506000,00', sinister: 1, status: 0 }])
puts "Carro cadastrado"

50.times do
  Customer.create(name: Faker::Name.name, email: Faker::Internet.email, cpf: CPF.generate(true), rg: CPF.generate(true), phone: Faker::PhoneNumber.phone_number, cellular: Faker::PhoneNumber.cell_phone, sex: [0,1].sample, birth: Faker::Date.birthday(18, 65))
end

puts "Clientes cadastrados"

User.create(name: 'Ivandro', email: 'ivandro@gmail.com', password: '123456')
User.create(name: 'Tiago', email: 'tiago.piovesan.tp@gmail.com', password: '123456')
User.create(name: 'Matheus', email: 'matheus@gmail.com', password: '123456')

puts "Administradores cadastrados"
