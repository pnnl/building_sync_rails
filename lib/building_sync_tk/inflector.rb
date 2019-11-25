require "isomorphic/inflector"

module BuildingSyncTk
  # An Isomorphic inflector that is specialized for the {BuildingSync} base module.
  class Inflector < ::Isomorphic::Inflector::AbstractInflector
    # @!scope class

    # @!method instance
    #   @return [BuildingSyncTk::Inflector] the singleton instance
    include ::Singleton

    # @!scope instance

    # Private constructor.
    def initialize
      super(::BuildingSync)
    end

    # @!method building_sync
    #   Inflect upon the given terms.  Alias for {#isomorphism}.
    #
    #   @param terms [Array<Object>] the inflectable terms
    #   @return [String] the inflection
    #   @raise [Isomorphic::InflectorError] if an inflectable term is invalid
    alias_method :building_sync, :isomorphism
  end
end
