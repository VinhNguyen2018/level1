require_relative '../models/teacher'

class PostsController
  def initialize
    @view = TeachersView.new
  end

  def index
    @view.display_list
    # TODO: implement listing all teachers
  end

  def create
    firstname = @view.ask_for_stuff("Title")
    lastname = @view.ask_for_stuff("Url")
    post = Post.new(first_name: firstname, last_name: lastname, votes: post)
    post.save
  end

end
