require ('rspec')
require ('./lib/Hangman')
require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('pry')

get("/") do
  @word = 0
  @length = 0
  @i = 0
  erb(:home)
end

post("/") do
  name = params.fetch('name')
  game = Hangman.new(name)
  @word = game.find_word()
  @i = 0
  @length = @word.length
  binding.pry
  erb(:home)
end

get("/check") do
  word= params.fetch('word')
  word =word.split("")
  word_index = params.fetch('0')
end
