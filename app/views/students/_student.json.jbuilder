json.extract! student, :id, :name, :code, :birthday, :sex, :address, :class_room_id, :created_at, :updated_at
json.url student_url(student, format: :json)
