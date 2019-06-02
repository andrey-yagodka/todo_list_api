class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :deadline, :position, :is_done

  has_many :comments
end
