Rails.application.routes.draw do
  mount BuildingSyncRails::Engine => "/building_sync_rails"
end
