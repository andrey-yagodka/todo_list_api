class Tasks::ManageUpdateActionService
  ACTION = {
    up: 'up',
    down: 'down'
  }.freeze

  def self.call(task, params)
    params[:position] ? update_position(params[:position]) : task.update(params)
  end

  private

  def update_position(param)
    case param
    when ACTION[:up] then @task.move_higher
    when ACTION[:down] then @task.move_lower
    end
  end
end
