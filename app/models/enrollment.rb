class Enrollment < ApplicationRecord
validates :user_id, :uniqueness => { :scope => :course_id}
end
