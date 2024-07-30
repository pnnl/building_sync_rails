# encoding: UTF-8
require 'BuildingSync_mapping_registry.rb'

class BuildingSyncMapper < XSD::Mapping::Mapper
  def initialize
    super(BuildingSyncMappingRegistry::Registry)
  end
end
