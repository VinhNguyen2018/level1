class Router
  def initialize
    @controller = TeachersController.new
  end

  def run
    print_welcome
    loop do
      print_menu
      action = gets.chomp.to_i
      route_action(action)
    end
  end

  private

  def route_action(action)
    case action
    when 1 then @controller.index
    when 2 then @controller.create
    # when 3 then @controller.update
    # when 4 then @controller.destroy
    # when 5 then @controller.upvote
    when 3 then exit
    end
  end

  def actions
    [
      "List all teachers",
      "Add a teacher",
      # "Edit a post title & url",
      # "Delete a post",
      # "Vote for a post",
      "Exit"
    ]
  end

  def print_menu
    puts "\n--\nWhat do you want to do?"
    actions.each_with_index do |action, index|
      puts "#{index + 1} - #{action}"
    end
    print "> "
  end

  def print_welcome
    puts "-----------------------------"
    puts "Welcome to level 1"
    puts "-----------------------------"
  end
end
