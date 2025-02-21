# == Schema Information
#
# Table name: todos
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  due_date    :datetime
#  priority    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Todo < ApplicationRecord
  # Aqui va la definición de validaciones
  # validates :title, uniqueness: true, presence: true
  validates :title, presence: true
end
