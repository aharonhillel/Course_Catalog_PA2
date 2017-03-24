class Enrollment < ApplicationRecord
  belongs_to :courses
  belongs_to :users
validates :user_id, :uniqueness => { :scope => :course_id}
end
