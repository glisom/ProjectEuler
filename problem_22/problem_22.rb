class String
  def map
    size.times.with_object('') {|i,s| s << yield(self[i])}
  end
end

word_list = open("p022_names.txt").each_line.flat_map do |line|
    line.downcase.split(/[^[:alpha:]]/).reject(&:empty?)
end.uniq.sort

word_list.sort_by(&:downcase)

word_list = word_list.map do |str|
    str = str.chars.map do |char|
        char = (char.ord) - 96
    end
    str = str.inject(0, :+)
end

word_list = word_list.each_with_index.map do |e,i|
    e = ((i+1) * e)
end
puts word_list.inject(0, :+)
