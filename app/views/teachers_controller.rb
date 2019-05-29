require_relative '../models/teacher'

class TeachersView
  def display_list
    lists = Teacher.all
    lists.each do |list|
      puts "#{list.id} - #{list.first_name} - #{list.last_name}"
      puts '-' * 30
    end
  end

  def ask_for_stuff(stuff)
    puts "#{stuff} ?"
    gets.chomp
  end
end
