class ProjectsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @projects = Project.all
  end

  def update
    
  end

  def create

  end

  def show
    @project = Project.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @project }
    end
  end

  
  def all
    @projects = Project.all
    @todos = Todo.all
    respond_to do |format|
    format.json {render :json => {:projects => @projects,:todos => @todos}}
    end
	end

end
