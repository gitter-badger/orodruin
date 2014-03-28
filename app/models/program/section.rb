# Public: Program section
class Program::Section
  include Mongoid::Document

  field :name, type: String

  belongs_to :responsible, class_name: 'User'
end
