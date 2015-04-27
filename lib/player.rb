class Player

  attr_accessor :name, :choice

  def name_player(name)
    @name = name.capitalize
  end

  def choose(choice)
    @choice = choice
  end

end