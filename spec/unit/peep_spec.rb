 require './lib/peep'

describe Peep do

  describe '.all' do
    it 'returns a list of all peeps' do

      Peep.create(peep: 'My first Peep')
      Peep.create(peep: 'My second Peep')
      Peep.create(peep: 'My third Peep')

      peeps = Peep.all

      expect(peeps.length).to eq 3
      expect(peeps[2].peep).to include 'My first Peep'
      expect(peeps[1].peep).to include 'My second Peep'
      expect(peeps.first.peep).to include 'My third Peep'
    end

  end

  describe '.create' do
    it 'adds a peep to the list' do
      Peep.create(peep: 'Hello Chitter')

      expect(Peep.all.first.peep).to include 'Hello Chitter'
    end
  end
      

end
