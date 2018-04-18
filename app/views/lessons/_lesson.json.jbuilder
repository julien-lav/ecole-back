json.extract! lesson, :id, :title, :description, :year, :category, :content, :link, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
