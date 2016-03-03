module SocialModule

  class Social

    include MidsectionModule

    def initialize(browser)
      @browser = browser
    end

    def social
      MidsectionModule::PageModule.new(@browser)
    end

    def social_module
      social.content_section.div(:class => "row social-strip")
    end

    def twitter_link
      social_module.span(:class => "icon twitter")
    end

    def twitter_click
      twitter_link.click
    end

    def facebook_link
      social_module.span(:class => "icon facebook")
    end

    def facebook_click
      facebook_link.click
    end

    def twitter_window
      @browser.window(:title => "Post a Tweet on Twitter")
    end

    def facebook_window
      @browser.window(:title => "Facebook")
    end

  end

  class HomepageSocial

    def initialize(browser)
      @browser = browser
    end

    def social_icon
      @browser.div(:class => "social-box").div(:class => "social-icon")
    end

    def social_box_feed_module
      @browser.div(:class => "social-box-feed")
    end

  end

end