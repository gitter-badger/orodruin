class Program::Event
  include Mongoid::Document

  field :name, type: String, localize: true
  field :authors, type: Array

  field :start_at, type: Time
  field :duration, type: Integer

  field :language, type: Symbol, default: I18n.default_locale

  belongs_to :room, class_name: 'Program::Room'
end
