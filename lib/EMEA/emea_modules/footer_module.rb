module FooterModule
  class RelatedContent

    def initialize(browser)
      @browser = browser
    end

    def cta_module
      cta_module_obj
    end

    def cta_module_image
      cta_module_image_obj
    end

    def cta_module_title(n)
      cta_module_title_obj(n)
    end

    def cta_module_info(n)
      cta_module_info_obj(n)
    end

    def cta_module_image_link
      cta_module_image_link_obj
    end

    def cta_module_links
      cta_links
    end

    def count_cta_links
      i=0
      cta_links.each do
        i = i + 1
      end
      return i
    end

    def footer_video_link
      why_synergy_footer_modules.each do |block|
         if block.link.present? == true
              return block.link
         end
      end

    end

  private

    def why_synergy_footer_modules
      @browser.divs(:class => " cta col-md-3 cta-small")
    end

    def cta_module_obj(n)
      @browser.div(:class => "row related-content").div(:class => " cta", :index => n)
    end

    def cta_module_title_obj(n)
      cta_module_obj(n).h2
    end

    def cta_module_info_obj(n)
      cta_module_obj(n).p
    end


    def cta_links
      @browser.div(:class => "row related-content").divs(:class => " cta")
    end

    def cta_module_image_obj
      @browser.img(:class => "cta-img")
    end


  end

  class FooterLinks

    def contactus
      footer_link("contactus")
    end

    def faqs
      footer_link("FAQs")
    end

    def fuels_link
      footer_link("www.esso.co.uk")
    end

    def motor_oil_link
      footer_link("www.mobil1.co.uk")
    end

  private

    def footer_link(link)
      @browser.link(:href => /\/#{link}\z/)
    end

  end
end
