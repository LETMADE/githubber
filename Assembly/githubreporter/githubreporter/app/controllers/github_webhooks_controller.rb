# app/controllers/github_webhooks_controller.rb
class GithubWebhooksController < ActionController::Base
  include GithubWebhook::Processor

  def create(payload)
    puts params
  end

  def webhook_secret(payload)
    ENV['GITHUB_WEBHOOK_SECRET']
  end
end
