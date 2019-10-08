module Menu_Mod


  def clear_and_print
  puts "\e[2J\e[f"
  print "\e[3J\e[H\e[2J"
  end

  def endline
puts "-----------------------------------------------------------------------------------------------"
    puts "To return, enter 'menu' or enter 'exit' to end your session."
  end

  def user_menu
      clear_and_print
      puts Coral.coral_p

      input = nil
      secretanswer = nil

      while input != "exit"
        input = Readline.readline.downcase
          case input
            when 'exit'
              exit
            when "1"
              clear_and_print
              CoralGetter::SpsCoral.new.one
              endline
            when "2"
              clear_and_print
              CoralGetter::SpsCoral.new.two
              endline
            when "3"
              clear_and_print
              CoralGetter::SpsCoral.new.three
              endline
            when "4"
              clear_and_print
              CoralGetter::SpsCoral.new.four
              endline
            when "menu"
              clear_and_print
              CoralGetter::CLI.new.user_menu
            when "clear"
              clear_and_print
              CoralGetter::SpsCoral.new.three
            when input.downcase == @@three.each do|coral|
              if input == coral[:coralname].downcase
                Launchy.open "#{coral[:url]}"
                clear_and_print
                CoralGetter::SpsCoral.new.three
              end
            end

    end
end

  def goodbye
    puts "Session Exited"
  end
end
end
