class Article < ApplicationRecord
  def self.sleep_and_post
    sleep 10
    puts "Post"
  end
end
