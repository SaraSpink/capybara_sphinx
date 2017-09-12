require('rspec')
require('sphinx')
describe('Sphinx#riddle_compare') do
  it('determine how many riddles are solved') do
  sphinx = Sphinx.new()

  expect(sphinx.riddle_compare("Yesterday, Today, and Tomorrow.")).to(eq(1))
  end
end
