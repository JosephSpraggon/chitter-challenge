require 'pg'
require './lib/database_connection'

class Peep

  def self.all
    result = DatabaseConnection.query('SELECT * FROM peeps ORDER BY posted DESC;')
    result.map {|peep| peep['peep']}
  end

  def self.create(peep:)
    DatabaseConnection.query("INSERT INTO peeps (peep, posted) VALUES('#{peep}', NOW());")
  end


end