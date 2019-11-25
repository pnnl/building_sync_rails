require "building_sync_tk/inflector"

require "isomorphic/memoization"

module BuildingSyncTk
  # @see Isomorphic::Memoization
  module Memoization
    extend ::ActiveSupport::Concern

    included do
      include ::Isomorphic::Memoization
    end

    class_methods do
      # @!scope class

      # Defines finder methods and instance variables for the Active Record associations given by name.
      #
      # @param terms [Array<Object>] the inflectable terms
      # @param association_names [Array<#to_s>] the association names
      # @param options [Hash<Symbol, Object>] the options
      # @option options [Array<#to_s>] :xmlattrs ([]) the XML attribute names
      # @return [void]
      # @raise [Isomorphic::InflectorError] if an inflectable term is invalid
      def memo_building_sync_for(*args)
        memo_isomorphism_for(BuildingSyncTk::Inflector.instance, *args, xmlattrs: BuildingSyncTk::Factory.instance.xmlattrs)
      end

      # Returns the memo-cahe.
      #
      # @return [Hash<Module, ActiveSupport::HashWithIndifferentAccess>] the memo-cache
      def memo_building_sync_method_names_by_association_name
        memo_isomorphism_method_names_by_association_name_for(BuildingSyncTk::Inflector.instance.base)
      end
    end

    # @!scope instance

    # Find all memoized instances for the given Active Record record by XML attribute name.
    #
    # @param record [ActiveRecord::Base] the Active Record record
    # @param options [Hash<Symbol, Object>] the options
    # @option options [Array<#to_s>] :xmlattrs ([]) the XML attribute names
    # @return [ActiveSupport::HashWithIndifferentAccess] the memoized instances by XML attribute name
    # @raise [Isomorphic::InflectorError] if an inflectable term is invalid
    def find_all_with_memo_building_sync_for(*args)
      find_all_with_memo_isomorphism_for(BuildingSyncTk::Inflector.instance, *args, xmlattrs: BuildingSyncTk::Factory.instance.xmlattrs)
    end
  end
end
