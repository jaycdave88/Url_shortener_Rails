class Url < ActiveRecord::Base
  before_save :genarate_short_url

  def genarate_short_url
   self.short_url = (0...6).map { (65 + rand(26)).chr }.join
  end

end
