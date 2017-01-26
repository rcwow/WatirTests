require 'watir'
require 'test-unit'
#require 'test/unit'

#w= Watir::Browser.new phantomjs
#driver=Selenium::WebDriver.for(:phantomjs)
#w= Watir::Browser.new(driver)
w= Watir::Browser.new

#open browser and navigate to bbc.com
w.goto 'http://bbc.com'
p "Opened web bbc.com"

w.button(:class => 'orb-search__button').wait_until_present
w.button(:class => 'orb-search__button').click

w.text_field(:class => 'se-searchbox__input__field').set('World Markets')
p 'Enter World Markets in the search box'

w.button(:class => 'se-searchbox__submit').click
p "Click the submit search button"

w.section(:class => 'search-content').lis.length

w.lis(:text => '/data-result-number/').length
sr = w.li(:css => '.search-results > li:nth-child(10)').visible?
p sr
p "1st set of 10 search results were displayed"

w.link(:class => 'more').click
w.li(:css => '.search-content > ol:nth-child(1) > li:nth-child(10)').visible?
p "2nd set of 10 search results were displayed"

w.link(:class => 'more').click
w.li(:css => '.search-content > ol:nth-child(2) > li:nth-child(10)').visible?
p "3rd set of 10 search results were displayed"

w.link(:class => 'more').click
w.li(:css => '.search-content > ol:nth-child(3) > li:nth-child(10)').visible?
p "4th set of 10 search results were displayed"

w.link(:class => 'more').click
w.li(:css => '.search-content > ol:nth-child(4) > li:nth-child(10)').visible?
p "5th set of 10 search results were displayed"

w.link(:class => 'more').click
w.li(:css => '.search-content > ol:nth-child(5) > li:nth-child(10)').visible?
p "6th set of 10 search results were displayed"

w.link(:class => 'more').click
w.li(:css => '.search-content > ol:nth-child(6) > li:nth-child(10)').visible?
p "7th set of 10 search results were displayed"

w.link(:class => 'more').click
w.li(:css => '.search-content > ol:nth-child(7) > li:nth-child(10)').visible?
p "8th set of 10 search results were displayed"

w.link(:class => 'more').click
w.li(:css => '.search-content > ol:nth-child(8) > li:nth-child(10)').visible?
p "9th set of 10 search results were displayed"

w.link(:class => 'more').click
w.li(:css => '.search-content > ol:nth-child(9) > li:nth-child(10)').visible?
p "10th set of 10 search results were displayed"

w.close


