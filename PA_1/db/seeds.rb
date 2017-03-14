require 'json'

def seed_courses
	json_seed = JSON.parse(File.read('db/json_seed/course.json'))

	json_seed.each do |c|
		Course.create(independent_study: c["independent_study"], name: c["name"],  code: c["code"],  credits: c["credits".to_i], description: c["description"])
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
		Subject.create(name: subject["name"])
	end
end
def auto_clear_tables
  # I added this so I don't always have to do db:drop:all
  Course.delete_all
  Instructor.delete_all
  Subject.delete_all
end
auto_clear_tables
seed_courses
seed_instructor
seed_subject
