module Github
  class GithubProject < ApplicationRecord
    self.table_name = 'github_projects'
    belongs_to :github_auth_user, class_name: 'Github::GithubAuthUser'
    has_many :github_project_statuses, dependent: :destroy, class_name: 'Github::GithubProjectStatus'
    has_many :github_project_types, dependent: :destroy, class_name: 'Github::GithubProjectType'
    has_many :github_user_mappings, dependent: :destroy, class_name: 'Github::GithubUserMapping'
    has_one :github_field_mapping, dependent: :destroy, class_name: 'Github::GithubFieldMapping'
    belongs_to :github_repository, optional: true, class_name: 'Github::GithubRepository'
    has_many :github_project_priorities, dependent: :destroy, class_name: 'Github::GithubProjectPriority'
    validates :name, presence: true, uniqueness: true
  end
end