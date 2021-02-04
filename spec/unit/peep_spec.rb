 require './lib/peep'

describe Peep do

  describe '.all' do
    it 'returns a list of all peeps' do

      Peep.create(peep: 'My first Peep')
      Peep.create(peep: 'My second Peep')
      Peep.create(peep: 'My third Peep')

      peeps = Peep.all

      expect(peeps).to include 'My first Peep'
      expect(peeps).to include 'My second Peep'
      expect(peeps).to include 'My third Peep'
    end

  end

  describe '.create' do
    it 'adds a peep to the list' do
      Peep.create(peep: 'Hello Chitter')

      expect(Peep.all). to include 'Hello Chitter'
    end
  end
      

end
