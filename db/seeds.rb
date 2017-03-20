require 'json'

def seed_courses
	json_seed = JSON.parse(File.read('db/json_seed/course.json'))

	json_seed.each do |course|

	new_course = 	Course.create(independent_study: course["independent_study"], name: course["name"],  code: course["code"],  credits: course["credits".to_i], description: course["description"])
		relate_subjects_and_courses(course, new_course.id)
	end
end

def relate_subjects_and_courses(entire_course, course_id)
	entire_course['subjects'].each do |subject|
		subject_id = subject['id']
		where_is_subject_in_database = Subject.find_by(subject_type_id: subject_id)
#debugger
		if where_is_subject_in_database
			CoursesSubject.find_or_create_by(course_id: course_id, subject_id: where_is_subject_in_database.id)
		end
	end

end


def seed_instructor
	json_seed = JSON.parse(File.read('db/json_seed/instructor.json'))

	json_seed.each do |instructor|
		Instructor.create(first_name: instructor["first"], middle_name: instructor["middle"],lsat_name: instructor["last"], email: instructor["email"])
	end
end
def seed_subject
	json_seed = JSON.parse(File.read('db/json_seed/subject.json'))

	json_seed.each do |subject|
		Subject.create(name: subject["name"], subject_type_id: subject["id"])
	end
end
def auto_clear_tables
  # I added this so I don't always have to do db:drop:all
  Course.delete_all
  Instructor.delete_all
  Subject.delete_all
	User.delete_all

end

def seed_user
	User.create(first_name: "Aaron", last_name: "Gold", email: "aharonhillel@aol.com", password: "test", password_confirmation: "test")
end

auto_clear_tables
seed_instructor
seed_subject
seed_courses
seed_user
