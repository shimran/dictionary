class Term
@@dictionary = []

  define_method(:initialize) do |word, definition|
    @word = word
    @definition = definition
  end

  define_method(:word) do
    @word
  end

  define_method(:definition) do
    @definition=[]
  end

  define_singleton_method(:all) do
    @@dictionary
  end

  define_method(:save) do
    @@dictionary.push(self)
  end

  define_method(:edit_word) do |replace|
    @word=replace
  end

  define_method(:edit_definition) do |replace|
    @definition=replace
  end

    define_singleton_method(:delete_one) do |word_to_delete|
      found_term = nil
      @@dictionary.each do |term|
        if term.word() == word_to_delete
          found_term = word_to_delete
        end
      end
      @@dictionary.delete(found_term)
    end

  define_singleton_method(:search) do |search_word|
    found_term = nil
    @@dictionary.each do |term|
      if term.word() == search_word
        found_term = term
      end
    end
    found_term
  end

  define_singleton_method(:clear) do
    @@dictionary=[]
  end

end
