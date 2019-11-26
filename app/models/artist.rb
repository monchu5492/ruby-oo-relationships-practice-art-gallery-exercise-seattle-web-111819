class Artist

  attr_reader :name, :years_experience
  attr_accessor

    @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end
  
  def self.all
    @@all
  end

  def self.total_experience
    t_e = all.map {|artist| artist.years_experience}
    t = t_e.sum
  end

  def self.most_prolific
    all.find {|artist| binding.pry}
  end
  
  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery}.uniq
  end

  def cities
    galleries.map {|gallery| gallery.city}
  end

  def create_painting
    
  end

end
