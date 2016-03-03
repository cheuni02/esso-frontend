class FYS < EssoBase
  include HeaderModule

  def initialize(browser)
    @browser = browser
  end

  def cookiespopup
    HeaderModule::CookiesBar.new(@browser)
  end

  def menu
    HeaderModule::Menu_bar.new(@browser)
  end

  def visit
    visit_page
  end

  def hero_screen_image
    screen_image('assets/images/fuel-your-senses/main-animation-background.jpg')
  end

  def home_title
    fys_section("home").h1(:class => "title")
  end

  def home_copy
    fys_section("home").p
  end

  def scroll_to_start
    @browser.link(:class => "next-section-button")
  end

  def formula1link
    @browser.link(:href => "http://www.mclaren.com/formula1/")
  end

  def screen_image(image)
    @browser.img(:src => "#{image}")
  end

  def navigation_dot(n)
    @browser.div(:class => "section-navigation").link(:index => n)
  end

  def click_navigation_dot(n)
    navigation_dot(n).click
  end


  def screen_background(section)
    fys_section(section).div(:class => "background-image-container")
  end

  def screen_title(section)
    fys_section(section).h3(:class => "title")
  end

  def screen_sub_title(name,section)
    fys_section(section).div(:data_slide_id => name).h3(:class => "sub-title")
  end

  def screen_copy(section)
    fys_section(section).p(:index => 0)
  end

  def screen_sub_copy(name,section)
  fys_section(section).div(:data_slide_id => name).p(:index => 0)
  end

  def click_screen_button(section,link)
    screen_button(section,link).click
  end

  def screen_button(section,link)
    fys_section(section).link(:href => link)
  end

  def click_video_button(section,name)
    video_button(section,name).click
  end

  def video_button(section,name)
    fys_section(section).link(:class => name)
  end

  def click_start_button
    start_button.click
  end

  def start_button
    fys_section("quiz").link(:class => "start-quiz-button")
  end

  def fys_section(section)
    @browser.section(:class => section)
  end

  def fys_opened_window(window_title)
    @browser.window(:title => window_title)
  end

  def url_opened_window(window_title)
    fys_opened_window(window_title).use do
      return @browser.url
    end
  end

  def sight_or_sound
    fys_section("your-senses").div(:data_slide_id => "choose")
  end

  def click_sight_or_sound(option)
    sight_or_sound.link(:class => "#{option}-button").click
  end

  def video_box(mode)
    @browser.div(:id => "your-senses-#{mode}-video-modal")
  end

  def screen_link(section)
    fys_section(section).p(:index => 0)
  end

  def screen_social_links(section)
    fys_section(section).div(:class => "social-buttons")
  end

  def screen_fb_or_twitter(section,url)
    screen_social_links(section).link(:href => url)
  end

  def click_social_link(section,url)
    screen_fb_or_twitter(section,url).click
  end

  def quiz_slide(index)
    @browser.div(:class => "quiz slide", :index => index)
  end

  def click_quiz_answer(answer,index)
    quiz_slide(index).span(:text => answer).click
  end

  def quiz_member(member)
    member_no = member_id(member)
    @browser.h3(:class => "title answer-type-content answer-type-#{member_no}")
  end

  def member_id(member)
    case member
      when "The driver"
        return 1
      when "The mechanic"
        return 2
      when "The team boss"
        return 3
      when "Race engineer"
        return 4
    end
  end

end