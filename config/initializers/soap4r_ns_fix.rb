# Add "options" Argument to XSD Mapper/Mapping Methods
#
# @see https://github.com/rubyjedi/soap4r/pull/22

require "soap/mapping"
require "soap/parser"
require "xsd/mapping"
require "xsd/qname"

XSD::Mapping.instance_eval do
  undef :obj2xml

  undef :xml2obj
end

XSD::Mapping::Mapper.class_eval do
  undef :obj2xml

  undef :xml2obj
end

XSD::Mapping.send(:define_singleton_method, :obj2xml) do |*args|
  XSD::Mapping::Mapper.new(XSD::Mapping::MappingRegistry).obj2xml(*args)
end

XSD::Mapping.send(:define_singleton_method, :xml2obj) do |*args|
  XSD::Mapping::Mapper.new(XSD::Mapping::MappingRegistry).xml2obj(*args)
end

XSD::Mapping::Mapper.send(:define_method, :obj2xml) do |obj, elename = nil, io = nil, opts = {}|
  opt = XSD::Mapping::Mapper::MAPPING_OPT.dup.merge(opts)
  registry = instance_variable_get(:"@registry")
  unless elename
    if definition = registry.elename_schema_definition_from_class(obj.class)
      elename = definition.elename
      opt[:root_type_hint] = false
    end
  end
  elename = SOAP::Mapping.to_qname(elename) if elename
  soap = SOAP::Mapping.obj2soap(obj, registry, elename, opt)
  if soap.elename.nil? or soap.elename == XSD::QName::EMPTY
    soap.elename =
      XSD::QName.new(nil, SOAP::Mapping.name2elename(obj.class.to_s))
  end
  generator = SOAP::Generator.new(opt)
  generator.generate(soap, io)
end

XSD::Mapping::Mapper.send(:define_method, :xml2obj) do |stream, klass = nil, opts = {}|
  opt = XSD::Mapping::Mapper::MAPPING_OPT.dup.merge(opts)
  registry = instance_variable_get(:"@registry")
  parser = SOAP::Parser.new(opt)
  soap = parser.parse(stream)
  SOAP::Mapping.soap2obj(soap, registry, klass)
end
