module UsersHelper
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.first_name, class: "gravatar")
  end
  def print_courses
# string ""
#
#           Enrollment.where(user_id: current_user.id).each do |courses|
#               string <<   "<div class='row individual_course'>"
#            c = Course.find(courses.course_id)
#           string << "#{c.name}   -  #{c.code}"
#           string << "<p> #{c.description}"
#           string <<  "<div class='col-md-2'>"
#           string << "button_to 'Un-Enroll', courses, method: :delete, data: { confirm: 'Are you sure?' }, :class => 'btn btn-default', :unique => true"
#       string << " </div>  </div>"
#
#            end
#            string.html_safe
  end


end
