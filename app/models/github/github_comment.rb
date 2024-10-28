# app/models/comment.rb
module Github
  class GithubComment < ApplicationRecord
    self.table_name = 'github_comments'
    belongs_to :github_issue, class_name: 'Github::GithubIssue'
  end
end