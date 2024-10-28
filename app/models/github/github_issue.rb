module Github
  class GithubIssue < ApplicationRecord
    self.table_name = 'github_issues'
    belongs_to :github_repository, class_name: 'Github::GithubRepository'
    has_one :github_project_type, dependent: :destroy, class_name: 'Github::GithubProjectType'
    validates :title, presence: true
    has_and_belongs_to_many :github_users, 
                             class_name: 'Github::GithubUser', 
                             join_table: 'github_issues_users'
    has_many :github_comments, dependent: :destroy, class_name: 'Github::GithubComment'
  end
end
