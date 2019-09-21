class ArticlePostJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Article.sleep_and_post
  end
end
