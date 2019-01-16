class TodosController < ApplicationController

  def update
    
  end
  def create
    todo = Todo.new(params.require(:todo).permit([:text, :project_id]))
		if todo.save
			redirect_to :root_url
		end
  end

end
