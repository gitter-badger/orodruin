class DecoratedStrategy < DecentExposure::StrongParameterStrategy
  def resource
    decorator = options[:decorator]
    instance = super

    if decorator
      decorator.new(instance)
    else
      instance.try(:decorate)
    end
  rescue
    super
  end
end
