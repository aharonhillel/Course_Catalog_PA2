module CoursesHelper

def print_courses(course)
  string =""
string <<  "<div class='row individual_course'>"
  string <<  " <p> #{course.id} - #{course.code}   <br/>"

    string << "<p> #{course.description} </p> Independent Study:"



  if course.independent_study == true
  string <<  "<i class='fa fa-check' aria-hidden='true'></i>"
   else
  string <<  "<i class='fa fa-times' aria-hidden='true'></i>"

  end

string<<  "<%= enroll_unenroll_buttons(course) %>"
string<<  "</div>"

  string.html_safe
end
end
