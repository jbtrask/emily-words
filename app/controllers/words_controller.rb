class WordsController < ApplicationController

  LETTERS = [
    %w{ c O m p a s I o N a t E },
    %w{ R _ P r E T t y S W _ _ },
    %w{ E M I L y _ _ _ w E a r },
    %w{ a k o O v - - - e s F o },
    %w{ t s H V c 2 _ 4 E o u s },
    %w{ l 6 K i n d _ m T M N e },
    %w{ v _ _ N 2 5 f R I e n D },
    %w{ E _ _ g C a R i n g ! _ }
  ]

  WORDS = %w{
    compasionate
    pretty
    emily
    kind
    friend
    caring!
    creative
    loving
    sweet
    awesome
    fun
    rose
  }

  def index

  end

end
