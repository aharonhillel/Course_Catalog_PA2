module EnrollmentsHelper

  def enroll_unenroll_buttons(individual_course)

    if Enrollment.find_by(course_id: individual_course.id, user_id: current_user.id).nil?
    button_to 'Enroll', {:controller => "enrollments", :action => "create", :course_id => individual_course.id,  :user_id=> current_user.id}, :method=>:post, :class => "btn btn-default enrollbutton", :id =>"enrollbutton", role: "button", :unique => true, remote: true
  else
  button_to 'Un-Enroll', individual_course, method: :delete, data: { confirm: 'Are you sure?' }, :class => "btn btn-default enrollbutton", :unique => true, remote: true    end
end

end
