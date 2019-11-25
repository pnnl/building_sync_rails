require_relative "../../lib/BuildingSync.rb"
require_relative "../../lib/BuildingSync_mapper.rb"
require_relative "../../lib/BuildingSync_mapping_registry.rb"

if defined?(BuildingSyncMapper)
  require "singleton"

  unless BuildingSyncMapper.included_modules.include?(::Singleton)
    BuildingSyncMapper.send(:include, ::Singleton)
  end
end
