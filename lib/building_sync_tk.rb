require "active_support/dependencies/autoload"

require "building_sync_tk/version"

module BuildingSyncTk
  extend ::ActiveSupport::Autoload

  autoload :Factory,     "building_sync_tk/factory"
  autoload :Inflector,   "building_sync_tk/inflector"
  autoload :Memoization, "building_sync_tk/memoization"
  autoload :Model,       "building_sync_tk/model"
end
