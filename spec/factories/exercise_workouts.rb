# == Schema Information
#
# Table name: exercise_workouts
#
#  id          :integer          not null, primary key
#  exercise_id :integer          not null
#  workout_id  :integer          not null
#  order       :integer          not null
#  points      :float            default(1.0)
#  created_at  :datetime
#  updated_at  :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :exercise_workout do
    exercise_id 1
    workout_id 1
    order 1
    points ""
  end
end
