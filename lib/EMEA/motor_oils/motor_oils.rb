class Oils < EssoBase
  include HeaderModule, MidsectionModule, FooterModule

  def visit
    visit_page('')
  end

end