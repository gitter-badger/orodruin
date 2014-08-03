# Private: Decent Exposure strategy that try to wrap exposed model with
# its decorator.
#
# Also accepts option `:decorator` which will specify custom decorator. If fail
# returns model untouched.
class DecoratedStrategy < DecentExposure::StrongParametersStrategy
  def resource
    decorator = options[:decorator]
    instance = super

    return instance if options.key?(:decorator) && decorator.nil?

    if decorator
      decorator.new(instance)
    else
      instance.decorate
    end
  rescue
    super
  end
end
