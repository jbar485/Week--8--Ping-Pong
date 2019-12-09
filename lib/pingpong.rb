class Integer
  def pingpong_count()
    array = []
    (1..self).each do |start_number|
      if start_number % 15 === 0
        array.push("ping pong")
      elsif start_number % 5 === 0
        array.push("pong")
      elsif start_number % 3 === 0
        array.push("ping")
      else
        array.push(start_number)
      end
    end
    puts array
    return array
  end
end
