json.extract! student, :id, :stud_id, :name, :address, :mobile_no, :course, :gender, :email, :created_at, :updated_at
json.url student_url(student, format: :json)
