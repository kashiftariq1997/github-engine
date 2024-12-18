module Github
  class GithubAuthUser < ApplicationRecord
    self.table_name = 'github_auth_users'
    validates :github_uid, presence: true, uniqueness: true
    validates :username, :email, presence: true
    has_many :github_repositories, dependent: :destroy, class_name: 'Github::GithubRepository'

    def self.from_omniauth(auth)
      user = find_or_initialize_by(github_uid: auth.uid)
      user.username = auth.info.nickname
      user.email = auth.info.email
      user.access_token = auth.credentials.token
      user.save!
      user
    end

    def token_expired?
      token_expiry && Time.current > token_expiry
    end
  end
end