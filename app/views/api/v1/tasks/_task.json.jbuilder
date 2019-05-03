json.extract! task, :id, :name, :deadline, :position, :is_done, :project_id, :created_at, :updated_at
json.url api_v1_task_url(task)
