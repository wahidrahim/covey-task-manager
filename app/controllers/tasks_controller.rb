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
		quad1 = Task.where(quadrant: 1).order(urgency: :desc)
		quad2 = Task.where(quadrant: 2).order(importance: :desc)
		quad3 = Task.where(quadrant: 3).order(urgency: :desc)
		quad4 = Task.where(quadrant: 4).order(importance: :desc)
		@quads = [quad1, quad2, quad3, quad4];
  end
end
