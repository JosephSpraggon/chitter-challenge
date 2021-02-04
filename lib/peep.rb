require 'pg'
require './lib/database_connection'

class Peep

  attr_reader :peep, :posted

  def initialize(peep:, posted:)
    @peep = peep
    @posted = posted
  end

  def self.all
    result = DatabaseConnection.query('SELECT * FROM peeps ORDER BY posted DESC;')
    result.map {|peep| 
      Peep.new(peep: peep['peep'], posted: peep['posted'])
    }
  end

  def self.create(peep:)
    DatabaseConnection.query("INSERT INTO peeps (peep, posted) VALUES('#{peep}', NOW());")
  end


end