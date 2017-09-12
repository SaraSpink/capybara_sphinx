class Sphinx
  def initialize
    @riddles = ["Can you name three consecutive days without using the words Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, or Sunday?", "What can travel around the world while staying in a corner?" , "To test the head and test the tail, which animal will not fail?"]
    @answers = ["Yesterday, Today, and Tomorrow.", "A Stamp", "A Capybara"]
    @answers_input = []
  end

  def display_riddle
    @riddles
  end

  def accept_input(answer)
    @answers_input.push(answer)
  end

  def riddle_compare
    x = 0
    score = 0
    while x < @riddles.length
      str1 = (@answers_input[x]).to_s.downcase().gsub(/[^0-9A-Za-z\s]/, '')
      str2 = (@answers[x]).to_s.downcase().gsub(/[^0-9A-Za-z\s]/, '')

      string1 = str1.split.sort.join
      string2 = str2.split.sort.join

      if string2.include? string1
      score += 1
      end
      x += 1
    end
    score
  end
end
