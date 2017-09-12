class Sphinx
  def initialize
    @riddles = ["Can you name three consecutive days without using the words Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, or Sunday?", "What can travel around the world while staying in a corner?"]
    @answers = ["Yesterday, Today, and Tomorrow.", "A Stamp"]
    @answers_input = []
  end

  def accept_input(answer)
    @answers_input.push(answer)
  end

  def riddle_compare
    x = 0
    score = 0
    while x < @riddles.length
      if @answers_input[x] == @answers[x]
        score += 1
      end
      x += 1
    end
    score
  end
end
