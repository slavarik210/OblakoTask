class TodosController < ApplicationController

  def update
    todo = Todo.find(params[:id])
    todo.update(:isCompleted => !todo.isCompleted)
    redirect_to root_path
  end

  def create
    todo = Todo.new(params.require(:todo).permit([:text, :project_id]))
    if todo.save
			redirect_to root_path
		end
  end

end
