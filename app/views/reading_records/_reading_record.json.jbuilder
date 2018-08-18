json.extract! reading_record, :id, :title, :start_time, :end_time, :content, :user_id, :created_at, :updated_at
json.url reading_record_url(reading_record, format: :json)
