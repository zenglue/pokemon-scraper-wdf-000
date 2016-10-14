class Pokemon
  attr_accessor :id, :name, :type, :db

#rspec is passing only one argument?, this passes with only one arg, shouldnt it need at least 3?
  def initialize(id)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)",name, type)
  end


#undefined method `id' for [[1, "Pikachu", "electric"]]:Array  is this right?
  def self.find(id, db)
    sql = "SELECT * FROM pokemon WHERE id = ?"
    result = db.execute(sql, id)[0]
    Pokemon.new(result[0],[1],[2])
  end
end
