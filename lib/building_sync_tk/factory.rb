require "isomorphic/factory"

module BuildingSyncTk
  # An Isomorphic factory that is specialized for the {BuildingSync} base module.
  class Factory < ::Isomorphic::Factory::AbstractFactory
    # @!scope class

    # @!method instance
    #   @return [BuildingSyncTk::Factory] the singleton instance
    include ::Singleton

    # @!scope instance

    # Private constructor.
    def initialize
      super(::BuildingSync)
    end

    # Get +<auc:UserDefinedFields>+ for the given object.
    #
    # @param object [#userDefinedFields] the object
    # @return [Hash<String, Array<String>>, nil] the key-value pairs as a hash or +nil+ if the given object is invalid
    #
    # @note The return value is a hash of arrays (not a hash) because +<auc:FieldName>+ elements are not guaranteed unique within the +<auc:UserDefinedFields>+ element.
    def get_user_defined_fields(object)
      object.try(:userDefinedFields).try { |building_sync_user_defined_fields|
        if building_sync_user_defined_fields.is_a?(::BuildingSync::UserDefinedFields)
          building_sync_user_defined_fields.inject({}) { |acc, building_sync_user_defined_fields_user_defined_field|
            if building_sync_user_defined_fields_user_defined_field.is_a?(::BuildingSync::UserDefinedFields::UserDefinedField)
              building_sync_user_defined_fields_user_defined_field.send(:fieldName).try(:to_s).try { |key|
                building_sync_user_defined_fields_user_defined_field.send(:fieldValue).try(:to_s).try { |value|
                  acc[key] ||= []
                  acc[key] << value
                }
              }
            end

            acc
          }
        else
          nil
        end
      }
    end

    # Build an instance of the given class that represents a "link" to the given target.
    #
    # In BuildingSync XML, a "link" is an element with an +@IDref+ attribute.  The value of the +@IDref+ attribute is the value of the +@ID+ attribute of another element.
    #
    # @param instance_class [Class] the class for the "link"
    # @param target_instance [#xmlattr_ID] the target instance
    # @param options [Hash<#to_sym, Object>] the options
    # @option options [Hash<#to_sym, Object>] :attributes ({}) the attributes for the "link"
    # @option options [Hash<#to_sym, #to_s>] :xmlattrs ({}) the XML attributes for the "link"
    # @yieldparam instance [Object] the "link"
    # @yieldreturn [void]
    # @return [Object] the "link"
    # @raise [Isomorphic::InvalidFactoryClass] if the given class is invalid
    def link(instance_class, target_instance, **options, &block)
      send(:for, instance_class, **options.merge({
        attributes: (options[:attributes] || {}).merge({
          xmlattr_IDref: target_instance.send(:xmlattr_ID),
        }),
      }), &block)
    end

    # Build an instance of the given class that represents a "link" from the given source to the given target, and then assign the "link" to the source using the given method name.
    #
    # @param instance_method_name [#to_s] the method name
    # @param instance_class [Class] the class for the "link"
    # @param source_instance [#xmlattr_ID] the source instance
    # @param target_instance [#xmlattr_ID] the target instance
    # @param options [Hash<#to_sym, Object>] the options
    # @option options [Hash<#to_sym, Object>] :attributes ({}) the attributes for the "link"
    # @option options [Hash<#to_sym, #to_s>] :xmlattrs ({}) the XML attributes for the "link"
    # @yieldparam instance [Object] the "link"
    # @yieldreturn [void]
    # @return [Object] the "link"
    # @raise [Isomorphic::InvalidFactoryClass] if the given class is invalid
    def link_to(instance_method_name, instance_class, source_instance, target_instance, **options, &block)
      source_instance.send(:"#{instance_method_name}=", send(:link, instance_class, target_instance, **options, &block))
    end

    # Build an instance of the given class that represents a "link" from the given source to the given target, and then append the "link" to the "collection of links" for the source using the given method name.
    #
    # @param collection_method_name [#to_s] the method name
    # @param collection_class [Class] the class for the "link"
    # @param instance_class [Class] the class for the "link"
    # @param source_instance [#xmlattr_ID] the source instance
    # @param target_instance [#xmlattr_ID] the target instance
    # @param options [Hash<#to_sym, Object>] the options
    # @option options [Hash<#to_sym, Object>] :attributes ({}) the attributes for the "link"
    # @option options [Hash<#to_sym, #to_s>] :xmlattrs ({}) the XML attributes for the "link"
    # @yieldparam instance [Object] the "link"
    # @yieldreturn [void]
    # @return [Object] the "link"
    # @raise [Isomorphic::InvalidFactoryClass] if the given class is invalid
    def link_to_collection(collection_method_name, collection_class, instance_class, source_instance, target_instance, **options, &block)
      collection = source_instance.send(collection_method_name) || source_instance.send(:"#{collection_method_name}=", send(:for, collection_class))

      unless (instance = collection.select { |instance| instance.send(:xmlattr_IDref) == target_instance.send(:xmlattr_ID) }.first).nil?
        instance
      else
        instance = send(:link, instance_class, target_instance, **options, &block)

        collection << instance

        instance
      end
    end

    # Set +<auc:UserDefinedFields>+ for the given object.
    #
    # @param object [#userDefinedFields] the object
    # @param hash [Hash<String, String>, nil] the key-value pairs
    # @return [BuildingSync::UserDefinedFields] the +<auc:UserDefinedFields>+ instance
    def set_user_defined_fields(object, hash = {})
      hash.each do |key, value|
        unless user_defined_field?(object, key, value)
          send(:path, object, :userDefinedFields) << send(:for, ::BuildingSync::UserDefinedFields::UserDefinedField, attributes: {
            fieldName: key.to_s,
            fieldValue: value.to_s
          })
        end
      end

      object.send(:userDefinedFields)
    end

    # Is a +<auc:UserDefinedField>+ present with the given key-value pair?
    #
    # @param object [#userDefinedFields] the object
    # @param key [#to_s] the key
    # @param value [#to_s] the value
    # @return [Boolean] +true+ if the given key-value pair is present; otherwise, +false+
    def user_defined_field?(object, key, value)
      return false if key.nil? || value.nil?

      send(:path, object, :userDefinedFields, try: true).try(:any?) { |building_sync_user_defined_fields_user_defined_field|
        building_sync_user_defined_fields_user_defined_field.is_a?(::BuildingSync::UserDefinedFields::UserDefinedField) && building_sync_user_defined_fields_user_defined_field.send(:fieldName).try(:to_s).try(:==, key.to_s) && building_sync_user_defined_fields_user_defined_field.send(:fieldValue).try(:to_s).try(:==, value.to_s)
      }
    end

    # The XML attribute names.
    #
    # @return [Array<#to_sym>] the XML attribute names
    #
    # @note In BuildingSync XML, elements may have an +@ID+ attribute.
    # @see #xmlattr_ID_for
    def xmlattrs
      %w(ID)
    end

    protected

    # Checks for a constant with the given name in the base module.
    #
    # @param base [Module] the base module
    # @param klass [Class] the class
    # @param const_name [#to_sym] the constant name
    # @return [Class, Module, nil] the constant with the given name or +nil+ if not defined
    #
    # @note In BuildingSync XML, the constant may be of the given class, of the base module, or of the base module with the "Type" suffix.
    def const_get(base, klass, const_name)
      if klass.const_defined?(const_name)
        klass.const_get(const_name)
      elsif base.const_defined?(const_name)
        base.const_get(const_name)
      elsif base.const_defined?(:"#{const_name}Type")
        base.const_get(:"#{const_name}Type")
      else
        nil
      end
    end

    # Builds the value of the +@ID+ attribute for the given object.
    #
    # @param object [Object] the object
    # @return [String] the value of the +@ID+ attribute
    #
    # @note Using the {Object#object_id} ensures that the return value is unique.
    def xmlattr_ID_for(object)
      "#{object.class.name.split("::")[-1]}-#{object.object_id}"
    end
  end
end
