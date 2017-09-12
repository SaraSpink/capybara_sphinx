require('rspec')
require('sphinx')
describe('Sphinx#riddle_compare') do
  it('determine how many riddles are solved') do
  sphinx = Sphinx.new()
  sphinx.accept_input("Yesterday, Today, and Tomorrow.")
  expect(sphinx.riddle_compare()).to(eq(1))
  end
end
