module Github
  class GithubUser < ApplicationRecord
    self.table_name = 'github_users'
    validates :username, presence: true, uniqueness: true
    has_and_belongs_to_many :github_issues, class_name: 'Github::GithubIssue', join_table: 'github_issues_users'
  end
end