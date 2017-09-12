require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('./lib/sphinx')
require ('pry')



get ('/') do
  sphinx = Sphinx.new()
  @riddle = sphinx.display_riddle()
  erb(:input)
end

post ('/output') do
  sphinx = Sphinx.new()
  answer1 = params.fetch("riddle1")
  sphinx.accept_input(answer1)
  answer2 = params.fetch("riddle2")
  sphinx.accept_input(answer2)
  answer3 = params.fetch("riddle3")
  sphinx.accept_input(answer3)
  @sphinx_score = sphinx.riddle_compare()

  if @sphinx_score <3
    erb(:failure)
  else
    erb(:success)
  end
end
