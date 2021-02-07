user = User.create(email: "teste@testing.com", name: "reizl", password: "sample", age: 27, description: "The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup",linkedin: 'mimimi', github: 'mimimi' )

career1 = Career.create!( category: 'Produto')
career2 = Career.create!( category: 'Tecnologia/Desenvolvimento')
career3 = Career.create!( category: 'Design')
career4 = Career.create!( category: 'Liderança/Agile')
career5 = Career.create!( category: 'Data')

learn1 = Learn.create!( category: 'Revisão de Currículo')
learn2 = Learn.create!( category: 'Revisão de Portifólio')
learn3 = Learn.create!( category: 'Simulação de Entrevistas')
learn4 = Learn.create!( category: 'Orientação de Carreira')
learn5 = Learn.create!( category: 'Ajuda Técnica')

instruct1 = Instruct.create!( category: 'Revisão de Currículo')
instruct2 = Instruct.create!( category: 'Revisão de Portifólio')
instruct3 = Instruct.create!( category: 'Simulação de Entrevistas')
instruct4 = Instruct.create!( category: 'Orientação de Carreira')
instruct5 = Instruct.create!( category: 'Ajuda Técnica')
