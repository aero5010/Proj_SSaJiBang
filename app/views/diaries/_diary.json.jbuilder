json.extract! diary, :id, :title, :date, :content, :user_id, :created_at, :updated_at
json.url diary_url(diary, format: :json)
