# Private: Decent Exposure strategy that try to wrap exposed model with
# its decorator.
#
# Also accepts option `:decorator` which will specify custom decorator. If fail
# returns model untouched.
class DecoratedStrategy < DecentExposure::StrongParametersStrategy
  def resource
    decorator = options[:decorator]
    instance = super

    if decorator
      decorator.new(instance)
    else
      instance.try(:decorate) || instance
    end
  end
end
