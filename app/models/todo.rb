class Todo < ApplicationRecord
  belongs_to :project

  def as_json options={}
		{
			id: id,
			text: text,
			isCompleted: isCompleted,
			projectId: project.id
		}
  end
  
end
