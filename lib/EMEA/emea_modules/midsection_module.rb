module MidsectionModule

  class HeroModule

    def initialize(browser)
      @browser = browser
    end

    def content_section
      @browser.section(:class => "content")
    end

    def hero_module
      content_section.div(:class => "module-hero-wrapper")
    end

    def hero_header
      hero_module.h1
    end

    def hero_subheader
      hero_module.h2
    end

    def hero_copy
      hero_module.div(:class => "hero-copy").p
    end

    def hero_copy_link(link)
      hero_copy.link(:href => link)
    end

  end

  class PageModule

    def initialize(browser)
      @browser = browser
    end

    def content_section
      @browser.section(:class => "content")
    end

    def midsection_module(n)
      m = n - 1
      content_section.div(:class => "module-wrapper", :index => m)
    end

    def module_copy(n)
      midsection_module(n).div(:class => "module-responsive-text-container")
    end

    def module_video(n)
      midsection_module(n).iframe(:class => "video-player")
    end

    def module_button(n)
      midsection_module(n).link(:class => "btn btn-primary")
    end

    def module_button_name(n,href)
      midsection_module(n).link(:class => "btn btn-primary", :href => /#{href}/)
    end

    def module_image(n)
      midsection_module(n).img
    end

    def module_title(n,title)
      j = n - 1
      midsection_module(j).div(:class => "module-feature-title").h2(:text => title)
    end


  end

end