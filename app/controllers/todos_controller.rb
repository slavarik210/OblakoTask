class TodosController < ApplicationController
  skip_before_action :verify_authenticity_token
  def update
    #data_json = JSON.parse request.body.read
		#todo = Todo.find(data_json.id)
    todo = Todo.find(params[:id])
    todo.update(:isCompleted => !todo.isCompleted)
    redirect_to root_path
  end

  def create
    @todo = Todo.new(params.require(:todo).permit([:text, :project_id]))
    if @todo.save
			redirect_to root_path
		end
  end
  def all
		@todos = Todo.all
		render json: @todos
  end
  def show
    @todo = Todo.find(params[:id])
    respond_to do |format|
      format.html {
        render :show ????this seems unnecessary. Can it be eliminated??? 
      }
      format.json { 
        render json: @todo
      }
    end

end
