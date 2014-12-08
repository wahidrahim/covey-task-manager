class TasksController < ApplicationController
	def task_params
		params.require(:task).permit(:name, :urgency, :importance)
	end

	def add
		new_task = Task.new(task_params)

		if new_task.save
			# todo ajax
		else
			# todo forgot name?
		end

		redirect_to tasks_all_path
	end

  def remove
		Task.destroy(params[:id])

		redirect_to tasks_all_path
  end

  def complete
		task = Task.find(params[:id])
		task.update(complete: !task.complete)

		redirect_to tasks_all_path
  end

  def edit
  end

  def all
		@tasks = Task.all
  end
end
