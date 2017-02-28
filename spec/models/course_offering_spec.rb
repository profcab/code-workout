# == Schema Information
#
# Table name: course_offerings
#
#  id                      :integer          not null, primary key
#  course_id               :integer          not null
#  term_id                 :integer          not null
#  label                   :string(255)      not null
#  url                     :string(255)
#  self_enrollment_allowed :boolean
#  created_at              :datetime
#  updated_at              :datetime
#  cutoff_date             :date
#  lms_instance_id         :integer
#
# Indexes
#
#  index_course_offerings_on_course_id        (course_id)
#  index_course_offerings_on_lms_instance_id  (lms_instance_id)
#  index_course_offerings_on_term_id          (term_id)
#

require 'spec_helper'

describe CourseOffering do
  pending "add some examples to (or delete) #{__FILE__}"
end
