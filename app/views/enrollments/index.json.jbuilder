json.array!(@enrollments) do |enrollment|
  json.extract! enrollment, :id, :course_id, :user_id
  json.url enrollment_url(enrollment, format: :json)
end
