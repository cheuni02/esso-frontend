class TestError < StandardError
  def initialize(message = 'Failed: Error during test')
    super(message)
  end
end

class AssertionError < TestError
  def initialize(message = 'Failed: Error found in assertion')
    super(message)
  end
end

class ElementSizingError < TestError
  def initialize(message = 'Failed: There are sizing issues which cause elements not to fit inside each other')
    super(message)
  end
end
