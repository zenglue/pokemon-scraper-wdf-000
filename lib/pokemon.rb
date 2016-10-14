class Pokemon
  attr_accessor :id, :name, :type, :db

  def initialize(id=nil, name=nil, type=nil, hp=60)
    @id = id
    @name = name
    @type = type
    @db = db
    @hp = hp
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)",name, type)
  end

  def self.find(id, db)
    sql = "SELECT * FROM pokemon WHERE id = ?"
    result = db.execute(sql, id)[0]
    Pokemon.new(result[0], result[1], result[2])
  end

#  def alter_hp(id, db)
#    sql = "UPDATE pokemon SET hp = ? WHERE id = ?"
#    db.execute(sql, hp, id)
#  end
end
