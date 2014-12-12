class TasksController < ApplicationController
	def task_params
		return params.require(:task).permit(:name, :urgency, :importance)
	end

	def ordered_tasks
		return Task.order(:quadrant, mean: :desc)
	end

  def index
		@tasks = ordered_tasks
  end

	def create
		new_task = Task.new(task_params)

		if new_task.save
			respond_to do |format|
				format.html { redirect_to tasks_path }
				@tasks = ordered_tasks
				format.js
			end
		else
			# TODO
			puts "o: #{new_task.errors.messages}"
		end
	end
end
