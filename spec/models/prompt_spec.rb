# == Schema Information
#
# Table name: prompts
#
#  id                  :integer          not null, primary key
#  exercise_version_id :integer          not null
#  language_id         :integer          not null
#  instruction         :text             not null
#  position            :integer          not null
#  max_user_attempts   :integer          not null
#  attempts            :integer          not null
#  correct             :float            not null
#  feedback            :text
#  difficulty          :float            not null
#  discrimination      :float            not null
#  type                :integer          not null
#  allow_multiple      :boolean
#  is_scrambled        :boolean
#  created_at          :datetime
#  updated_at          :datetime
#
# Indexes
#
#  index_prompts_on_exercise_version_id  (exercise_version_id)
#  index_prompts_on_language_id          (language_id)
#

require 'spec_helper'

describe Prompt do
  pending "add some examples to (or delete) #{__FILE__}"
end
