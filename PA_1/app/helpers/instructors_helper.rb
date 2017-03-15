module InstructorsHelper

#   def display_instructors(instructors)
#     string = ""
#      @instructors.each_slice(3) do |instructors|
#     string = string <<"<div class='row instrucor_row'>"
#        instructors.each do |individual_instructor|
#           string + <<-eos
#           <div class="col-md-4 center-block text-center">
#           <img src='https://www.gravatar.com/avatar/HASH'/>
#
#           <br/>
#           link_to '#{individual_instructor.first_name}', individual_instructor
#
#         #{individual_instructor.middle_name}
#           #{individual_instructor.lsat_name}
#               <br/>
#          mail_to '#{individual_instructor.email}', individual_instructor.email
#
#
#         </div>
#         eos
#
#
#      end
#   string<<"</div>"
#     string.html_safe
#   end
# end
end
