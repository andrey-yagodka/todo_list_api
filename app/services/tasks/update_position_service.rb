class Tasks::UpdatePositionService
  ACTION = {
    up: 'up',
    down: 'down'
  }.freeze

  def initialize(task, position_param)
    @task = task
    @position_param = position_param
  end

  def call
    case @position_param
    when ACTION[:up] then @task.move_higher
    when ACTION[:down] then @task.move_lower
    end
  end
end
