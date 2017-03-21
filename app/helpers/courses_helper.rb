module CoursesHelper

  def display_loop(courses)
  
string = ""
  @courses.each do |course|
     string + <<-eos "<div class='row individual_course'>"
    link_to '#{course.name}', course
         <br/>
         <div class='col-md-10 offset-md-2'>
         #{course.description}
         -
         #{course.code}
         string << "</div>  <div class='col-md-10 offset-md-2'> Independent Study:"
         eos

  if course.independent_study == true
    string + string<< "link_to fa_icon('check')" #<!-- font awesome -->
   else
    string + string << "link_to fa_icon('times')"
   end
  string + string << " </div> </div>"
    end
     string.html_safe
  end
end
