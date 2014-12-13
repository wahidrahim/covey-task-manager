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
				@tasks = ordered_tasks
				format.html { redirect_to tasks_path }
				format.js
			end
		else
			# TODO
			puts "o: #{new_task.errors.messages}"
		end
	end

	def destroy
		Task.find(params[:id]).destroy

		respond_to do |format|
			@tasks = ordered_tasks
			format.html { redirect_to tasks_path }
			format.js
		end
	end
end
