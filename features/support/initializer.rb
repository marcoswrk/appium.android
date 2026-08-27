module Actions
  def home
    @home ||= HomeScreen.new
  end

  def registration
    @register_product ||= RegistrationScreen.new
  end

  def assert
    @assert ||= RegistrationAssert.new
  end

end