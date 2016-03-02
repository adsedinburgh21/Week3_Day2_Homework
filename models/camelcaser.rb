class Camelcaser

  def initialize(params)
    @text = params
  end

  def camelcase
    @text.split.map(&:capitalize).join
  end
end