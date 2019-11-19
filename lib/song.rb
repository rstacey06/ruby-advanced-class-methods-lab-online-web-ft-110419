class Song
  attr_accessor :name, :artist_name
  
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create 
<<<<<<< HEAD
    song = Song.new 
=======
    song = song.new 
>>>>>>> 72e906f2f375de5e3792893cba7567917ab8888a
    song.save 
    song
  end
  
  def self.new_by_name(song_name)
    song = self.new
    song.name = song_name
    song
  end
    
  def self.create_by_name(song_name)
    song = self.create
    song.name = song_name
    song
  end
  
  def self.find_by_name(song_name)
    self.all.find  {|song|  song.name  == song_name } 
  end
  
  def self.find_or_create_by_name(song_name)
    self.find_by_name(song_name) || self.create_by_name(song_name)
  end

  def self.alphabetical 
    self.all.sort_by  {|song| song.name}
  end
  
  def self.new_from_filename(filename)
<<<<<<< HEAD
    
    newname = filename.split(" - ")
    artist_name = newname[0]
    song_name = newname[1].gsub(".mp3", "") 
    
    new_song = Song.new 
    new_song.artist_name = artist_name
    new_song.name = song_name 
    new_song
  end
  
  
  # new just makes an instance 
  # create makes an instance AND saves it
  
  def self.create_from_filename(filename)
    self.new_from_filename(filename).save
=======
    binding.pry
    newname = filename.split(" - ")
    artist_name = newnam
  end
  
  def self.create_from_filename(filename)
    #split? same meth as new_from_filename only 
    #self.create?
>>>>>>> 72e906f2f375de5e3792893cba7567917ab8888a
  end
  
  def self.destroy_all 
    self.all.clear
  end
end

