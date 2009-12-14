module Linking
  
  def self.cookie_domain
    if production?
      return ".site.com"
    else
      return "localhost"
    end
  end
  
  def self.site
    if production?
      return "site.com"
    else
      return "localhost:3000"
    end
  end
  
  def self.home
    if production?
      return "http://" + self.site()
    else
      return "http://" + self.site()
    end
  end
  
  # makes passed URL safe for including as a param in a URL
  def self.escape_url_for_url_param(url)
    URI.escape(url, "?&" + URI::REGEXP::UNSAFE) # check this concat
  end
  
  def self.unescape_url_param_url(url)
    URI.unescape(url)
  end
  
  def self.production?
    ENV["RAILS_ENV"] == "production"
  end
  
  def self.at_url?(test_url, url)
    test_url == url
  end
end