class PigLatinizer

  attr_accessor :text

  def initalize(text)
    @text=text
  end

  def piglatinize(string)
    new_word=""
    if string.start_with?('a','e','i','o','u','A','E','I','O','U')
      new_word << ("#{string}""way")
    elsif string.start_with?('pl','sk','th','st','pr')
      cut_word = string[2..-1]
      cut_first_letter = string.slice(0..1)
      ay_added= ("#{cut_first_letter}"  "ay")
      new_word=("#{cut_word}#{ay_added}")
      new_word
    elsif string.start_with?('spr')
      cut_word = string[3..-1]
      cut_first_letter = string.slice(0..2)
      ay_added= ("#{cut_first_letter}""ay")
      new_word=("#{cut_word}#{ay_added}")
      new_word
    else
      cut_word = string[1..-1]
      cut_first_letter = string.slice(0)
      ay_added= ("#{cut_first_letter}"  "ay")
      new_word=("#{cut_word}#{ay_added}")
      new_word
    end
    new_word
  end

  def to_pig_latin(phrase)
    split_phrase= phrase.split(' ')
    new_word= split_phrase.map do |word|
      word =piglatinize(word)
    end
    new_word.join(' ').strip
  end
  #1.collect first letter from string
  #2. take collected latter and constat "ay" and put at end of string
  #3 dela with pig latin phrase
end
