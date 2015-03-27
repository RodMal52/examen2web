ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
include ERB::Util

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :subforums

  test "Checking XSS scripting with and without h()" do 
    subforum = Subforum.new(title: subforums(:XSS))
    assert_equal '&lt;script type=&quot;text/javascript&quot;&gt;alert(&quot;XSS&quot;)&lt;/script&gt;', h(subforum.title)
    assert_equal '<script type="text/javascript">alert("CROS REQUEST")</script>', subforum.title
  end
  
  test "Checkin SQL Injection" do
    subforum = Subforum.new(title: subforums(:SQLInjection).title)
    subforum.save();
    subforum = Subforum.where("id = ?", subforums(:SQLInjection).id).first();
    assert_equal "RodMal'; DELETE FROM subforums;", subforum.title
  end

  # Add more helper methods to be used by all tests here...
end

