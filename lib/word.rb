class Word
@@word = []

  define_method(:initialize) do |word, language|
    @word = word
    @language = language
    @id = @@word.length().+(1)
  end

  define_method(:word) do
    @word
  end

  define_method(:language) do
    @language
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@word
  end

  define_method(:save) do
    @@word.push(self)
  end

  define_singleton_method(:clear) do
    @@word = []
  end

  define_singleton_method(:find) do |id|
    found_word = nil
    @@word.each() do |word|
      if word.id().eql?(id)
        found_word = word
      end
    end
    found_word
  end

end
