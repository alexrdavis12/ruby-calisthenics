class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError
    def initialize(msg="Strategy must be one of R,P,S") 
      super msg
    end
  end
  
  def self.winner(player1, player2)
    p1 = player1[1]
    p2 = player2[1]
    if((p1 == 'R' || p1=='P' || p1=='S') && (p2 == 'R' || p2 =='P' || p2=='S'))
      if p1==p2             #p1 wins if same strategy used
        return player1
      elsif p1=='R' && p2 == 'S' #rule 1
        return player1
      elsif p1=='P' && p2=='R' #rule 2
        return player1
      elsif p1=='S' && p2 == 'P' #rule 3
        return player1
      else
        return player2
      end
    else
      raise NoSuchStrategyError
    end
  end

 def self.tournament_winner(tournament)
  if tournament.flatten.size==4 #base case
    return self.winner(tournament[0], tournament[1]) 
   end   #recursive case                              
    self.winner(self.tournament_winner(tournament[0]), self.tournament_winner(tournament[1]))
  end

end
