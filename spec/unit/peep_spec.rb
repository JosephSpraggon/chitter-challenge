 require './lib/peep'

describe Peep do

  describe '.all' do
    it 'returns a list of all peeps' do
      connection = PG.connect(dbname: 'chitter_test')

      connection.exec("INSERT INTO peeps (peep, posted) VALUES('My first Peep', NOW());")
      connection.exec("INSERT INTO peeps (peep, posted) VALUES('My second Peep', NOW());")
      connection.exec("INSERT INTO peeps (peep, posted) VALUES('My third Peep', NOW());")

      peeps = Peep.all

      expect(peeps).to include 'My first Peep'
      expect(peeps).to include 'My second Peep'
      expect(peeps).to include 'My third Peep'
    end

  end

end
