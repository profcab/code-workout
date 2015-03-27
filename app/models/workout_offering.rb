# == Schema Information
#
# Table name: workout_offerings
#
#  id                 :integer          not null, primary key
#  course_offering_id :integer          not null
#  workout_id         :integer          not null
#  created_at         :datetime
#  updated_at         :datetime
#  opening_date       :date
#  soft_deadline      :date
#  hard_deadline      :date
#
# Indexes
#
#  index_workout_offerings_on_course_offering_id  (course_offering_id)
#  index_workout_offerings_on_workout_id          (workout_id)
#

class WorkoutOffering < ActiveRecord::Base

  #~ Relationships ............................................................

  belongs_to :workout, inverse_of: :workout_offerings
  belongs_to :course_offering, inverse_of: :workout_offerings
  has_many :attempts, inverse_of: :workout_offering, dependent: :destroy


  #~ Validation ...............................................................

  validates :course_offering, presence: true
  validates :workout, presence: true

end
