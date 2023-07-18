module ConsoleInput
  def self.get_input(prompt)
    print prompt
    gets.chomp
  end



  def self.get_integer(prompt)
    input = get_input(prompt)
    begin
      Integer(input)
    rescue ArgumentError
      puts "Invalid input. Please enter an integer."
      get_integer(prompt)
    end
  end
 

  def self.get_float(prompt)
    input = get_input(prompt)
    begin
      Float(input)
    rescue ArgumentError
      puts "Invalid input. Please enter a floating-point number."
      get_float(prompt)
    end
  end


  def self.get_boolean(prompt)
    input = get_input(prompt).downcase
    case input
    when "true", "yes", "1"
      true
    when "false", "no", "0"
      false
    else
      puts "Invalid input. Please enter 'true' or 'false'."
      get_boolean(prompt)
    end
  end
end
