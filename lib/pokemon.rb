class Pokemon
  attr_accessor :id, :name, :type, :db

#rspec is passing only one argument?
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
    db.execute("SELECT * FROM pokemon WHERE pokemon.id = ?", id)
  end
end
