module Github
  class GithubRepository < ApplicationRecord
    self.table_name = 'github_repositories'
    belongs_to :github_auth_user, class_name: 'Github::GithubAuthUser'
    has_many :github_issues, dependent: :destroy, class_name: 'Github::GithubIssue'
    has_one :github_project, dependent: :destroy, class_name: 'Github::GithubProject'
    validates :name, presence: true
  end  
end