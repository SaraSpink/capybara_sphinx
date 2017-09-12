require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('./lib/sphinx')
require ('pry')

get ('/') do
  erb(:input)
end

post ('/output') do
  sphinx = Sphinx.new()
  answer1 = params.fetch("riddle1")
  sphinx.accept_input(answer1)
  answer2 = params.fetch("riddle2")
  sphinx.accept_input(answer2)
  @sphinx_score = sphinx.riddle_compare()
  erb(:output)
end
