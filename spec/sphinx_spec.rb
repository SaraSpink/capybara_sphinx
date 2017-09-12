require('rspec')
require('sphinx')
require('pry')
describe('Sphinx#riddle_compare') do
  it('determine how many riddles are solved') do
  sphinx = Sphinx.new()
  sphinx.accept_input("stamp")
  expect(sphinx.riddle_compare()).to(eq(0))
  end
end
