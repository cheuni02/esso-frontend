class Fuels < EssoBase

  def visit
    visit_page('fuels')
  end

  def opened_panel
    @browser.div(:class => "panel in")
  end

  def panel_obj(panel_no)
    @browser.div(:class => "accordion default-accordion ").link(:href => /faq-#{panel_no}/) #"#collapse-fuel-efficiency-tips-faq-#{panel_no}")
  end

  def panel_text
    opened_panel.div(:class => "responsive-text-container")
  end

  def click_panel(panel_no)
    panel_obj(panel_no).click
    sleep(1)
  end

  def panel_copy
    panel_text
  end

end
