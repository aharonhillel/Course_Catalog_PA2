json.array!(@courses_subjects) do |courses_subject|
  json.extract! courses_subject, :id, :course_id, :subject_id
  json.url courses_subject_url(courses_subject, format: :json)
end
