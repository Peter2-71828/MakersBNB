require './app'

describe MakersBNB do

    it 'returns users' do 

    connection = PG.connect(dbname: 'makersairbnb')

    makers = MakersBNB.create(name: "Toby Dawson", email: "tobydawson@gmail.com", password: "password" )

    maker = MakersBNB.all

    expect(maker.name).to eq 'Toby Dawson'

    end
end