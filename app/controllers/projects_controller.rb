class ProjectsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @projects = Project.all
  end

  def update
    
  end

  def create
    
  end
  def all
		@projects = Project.all
		render json: @projects
	end

end
