# Public: Event place description
class Program::Room
  include Mongoid::Document

  field :name, type: String, localize: true
end
