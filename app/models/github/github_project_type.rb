# app/models/github_project_type.rb
module Github
  class GithubProjectType < ApplicationRecord
    self.table_name = 'github_project_types'
    belongs_to :github_project, class_name: 'Github::GithubProject'
    belongs_to :github_issue, optional: true, class_name: 'Github::GithubIssue'
  end
end