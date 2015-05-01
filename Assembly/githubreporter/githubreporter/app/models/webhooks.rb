class Webhooks
  def self.create_webhook(owner, repo_name)
    # client = Octokit::Client.new(:login => Githubber.auth_token, :password => "x-oauth-basic")
    #
    # callback_url = "http://githubberapp.herokuapp.com/github_webhooks"
    # webhook_secret = ENV['GITHUB_WEBHOOK_SECRET']
    #
    # client.subscribe "https://github.com/#{repo_name}/events/push.json", callback_url, webhook_secret
    url = "https://api.github.com/repos/#{owner}/#{repo_name}/hooks"
    data = {}
    callback_url = "http://githubberapp.herokuapp.com/github_webhooks"
    data['name'] = "web"
    data['config'] = {url: callback_url, content_type: 'json'}
    data['events'] = %w(push pull_request pull_request_review_comment issue_comment)
    data['active'] = true
    Remote.post(url, data)
  end
end
