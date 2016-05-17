class WordFormatter

  def upcase( input )
    return input.upcase
  end

  def camelise( input )
    return input.replace(input.split(" ").each {|s| s.capitalize! }.join(""))
  end

end