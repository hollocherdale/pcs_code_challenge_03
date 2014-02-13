
class Parse

  def self.parse_names (prefixes, suffixes, name_string)

    parsed_name = {pre:"", first:"", middle:"", last:"", suffix:""}

    # get the last word and see if it's a suffix
    # if so, save as suffix and store the next to last word as last_name
    # otherwise store last word as last name

    word = name_string.split

    if suffixes.include? word.last
      parsed_name[:suffix] = word.pop
    end

    parsed_name[:last] = word.pop

    if prefixes.include? word.first
      parsed_name[:pre] = word.shift
    end
    
    if word[0] != nil
      parsed_name[:first] = word.shift
      if word[0] != nil
        parsed_name[:middle] = word.shift
      end
    end
    puts parsed_name

    parsed_name.values 
  end
end