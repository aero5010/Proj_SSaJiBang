json.extract! plan, :id, :title, :start_time, :end_time, :content, :user_id, :created_at, :updated_at
json.url plan_url(plan, format: :json)
