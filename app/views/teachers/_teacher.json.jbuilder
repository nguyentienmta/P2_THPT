json.extract! teacher, :id, :name, :code, :birthday, :phone, :address, :start_date, :isHeadMaster, :subject_id, :certificate_id, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
