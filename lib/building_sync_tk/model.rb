require "active_support/concern"

require "building_sync_tk/factory"
require "building_sync_tk/inflector"

require "isomorphic/model"

module BuildingSyncTk
  # @see Isomorphic::Model
  module Model
    extend ::ActiveSupport::Concern

    included do
      include ::Isomorphic::Model
    end

    class_methods do
      # @!scope class

      # Define an isomorphism for the given class and optional alias name.
      #
      # @param isomorphism_class [Class] the class for the isomorphism
      # @param method_suffix [#to_s] the optional alias name for the isomorphism
      # @param options [Hash<Symbol, Object>] the options
      # @option options [Boolean] :allow_blank (false) +true+ if the root node should always return a non-+nil+ target
      # @option options [Hash<Symbol, Object>] :attributes ({}) default attributes for the target
      # @option options [Boolean] :collection (false) +true+ if the target is a collection
      # @yieldparam node [Isomorphic::Node::Root] the root node
      # @yieldreturn [void]
      # @return [void]
      # @raise [Isomorphic::InflectorError] if an inflectable term is invalid
      def building_sync_for(*args, &block)
        isomorphism_for(BuildingSyncTk::Factory.instance, BuildingSyncTk::Inflector.instance, *args, &block)
      end
    end
  end
end
