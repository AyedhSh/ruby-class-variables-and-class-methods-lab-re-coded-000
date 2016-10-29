class Song
  @@count = 0
  @@genres =[]
  @@artists =[]
attr_accessor :name, :artist , :genre
# ----------------------------------------
def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
# ----------------------------------------
def self.count
@@count
end
# ----------------------------------------
def self.genres
 @@genres.uniq!
end
# ----------------------------------------
def self.artists
 @@artists.uniq!
end
# ----------------------------------------
def self.genre_count
gen_hash={}
@@genres.each do |item|
if gen_hash.key?(item) then
  gen_hash[item] += 1
else
  gen_hash[item]=1
end
end
gen_hash
end
# ----------------------------------------
def self.artist_count
art_hash ={}
@@artists.each do |item|
if art_hash.key?(item) then
art_hash[item] += 1
else
art_hash[item] = 1
end
end
art_hash
end
# ----------------------------------------
end
