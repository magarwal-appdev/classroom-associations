# == Schema Information
#
# Table name: courses
#
#  id            :integer          not null, primary key
#  title         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  department_id :integer
#

class Course < ApplicationRecord
    belongs_to :department, :class_name => "Department", :foreign_key => "department_id"
    has_many :enrollments
    has_many :students, :through => :enrollments
end
