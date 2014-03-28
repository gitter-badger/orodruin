# Public: Model that describe single event in program.
#
# Fields:
#
# - `name` - event name
# - `start_at` - start date and time
# - `duration` - estimated duration of event
# - `language` - language name (three-letter code as in ISO 639-3)
#
# Has and belongs to many:
#
# - `authors` - list of event authors
#
# Belongs to:
#
# - `room` - place where event will happen
class Program::Event
  include Mongoid::Document

  field :name, type: String, localize: true

  field :start_at, type: Time
  field :duration, type: Integer

  field :language, type: Symbol, default: I18n.default_locale

  # has_and_belongs_to_many :authors, class_name: 'User'

  belongs_to :room, class_name: 'Program::Room'
end
