# blackjack_score.rb

VALID_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']

def blackjack_score(hand)
  total = 0
  hand = Array.new(3) {rand (VALID_CARDS)}

  hand.each do |card|

    case card
    when 2, 3, 4, 5, 6, 7, 8, 9, 10
      score += card
    when 'Jack', 'Queen', 'King'
      score += 10
    when 'Ace'
      if score <= 10
        score += 11
      else
        score += 1
      end
    end

    return score

  end

  hand_played = blackjack_score(hand)
  puts "Your blackjack score is #{hand_played}"


end
