class Search

  attr_reader :term

  def initialize(term:)
    @term = term
  end

  # use of alias to refer to results, even though "interface" is run
  def run
    ShoutSearchQuery.new(term).to_relation
  end
  alias results run
end
