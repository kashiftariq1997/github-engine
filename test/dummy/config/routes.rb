Rails.application.routes.draw do
  mount Github::Engine => "/github"
end
