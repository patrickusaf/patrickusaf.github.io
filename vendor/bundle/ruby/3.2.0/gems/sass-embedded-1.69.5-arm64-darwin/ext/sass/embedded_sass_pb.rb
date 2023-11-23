# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: embedded_sass.proto

require 'google/protobuf'


descriptor_data = "\n\x13\x65mbedded_sass.proto\x12\x16sass.embedded_protocol\"\xf7\x0e\n\x0eInboundMessage\x12P\n\x0f\x63ompile_request\x18\x02 \x01(\x0b\x32\x35.sass.embedded_protocol.InboundMessage.CompileRequestH\x00\x12\\\n\x15\x63\x61nonicalize_response\x18\x03 \x01(\x0b\x32;.sass.embedded_protocol.InboundMessage.CanonicalizeResponseH\x00\x12P\n\x0fimport_response\x18\x04 \x01(\x0b\x32\x35.sass.embedded_protocol.InboundMessage.ImportResponseH\x00\x12Y\n\x14\x66ile_import_response\x18\x05 \x01(\x0b\x32\x39.sass.embedded_protocol.InboundMessage.FileImportResponseH\x00\x12]\n\x16\x66unction_call_response\x18\x06 \x01(\x0b\x32;.sass.embedded_protocol.InboundMessage.FunctionCallResponseH\x00\x12P\n\x0fversion_request\x18\x07 \x01(\x0b\x32\x35.sass.embedded_protocol.InboundMessage.VersionRequestH\x00\x1a\x1c\n\x0eVersionRequest\x12\n\n\x02id\x18\x01 \x01(\r\x1a\xe5\x05\n\x0e\x43ompileRequest\x12S\n\x06string\x18\x02 \x01(\x0b\x32\x41.sass.embedded_protocol.InboundMessage.CompileRequest.StringInputH\x00\x12\x0e\n\x04path\x18\x03 \x01(\tH\x00\x12\x32\n\x05style\x18\x04 \x01(\x0e\x32#.sass.embedded_protocol.OutputStyle\x12\x12\n\nsource_map\x18\x05 \x01(\x08\x12Q\n\timporters\x18\x06 \x03(\x0b\x32>.sass.embedded_protocol.InboundMessage.CompileRequest.Importer\x12\x18\n\x10global_functions\x18\x07 \x03(\t\x12\x13\n\x0b\x61lert_color\x18\x08 \x01(\x08\x12\x13\n\x0b\x61lert_ascii\x18\t \x01(\x08\x12\x0f\n\x07verbose\x18\n \x01(\x08\x12\x12\n\nquiet_deps\x18\x0b \x01(\x08\x12\"\n\x1asource_map_include_sources\x18\x0c \x01(\x08\x12\x0f\n\x07\x63harset\x18\r \x01(\x08\x1a\xac\x01\n\x0bStringInput\x12\x0e\n\x06source\x18\x01 \x01(\t\x12\x0b\n\x03url\x18\x02 \x01(\t\x12.\n\x06syntax\x18\x03 \x01(\x0e\x32\x1e.sass.embedded_protocol.Syntax\x12P\n\x08importer\x18\x04 \x01(\x0b\x32>.sass.embedded_protocol.InboundMessage.CompileRequest.Importer\x1aw\n\x08Importer\x12\x0e\n\x04path\x18\x01 \x01(\tH\x00\x12\x15\n\x0bimporter_id\x18\x02 \x01(\rH\x00\x12\x1a\n\x10\x66ile_importer_id\x18\x03 \x01(\rH\x00\x12\x1c\n\x14non_canonical_scheme\x18\x04 \x03(\tB\n\n\x08importerB\x07\n\x05inputJ\x04\x08\x01\x10\x02\x1aL\n\x14\x43\x61nonicalizeResponse\x12\n\n\x02id\x18\x01 \x01(\r\x12\r\n\x03url\x18\x02 \x01(\tH\x00\x12\x0f\n\x05\x65rror\x18\x03 \x01(\tH\x00\x42\x08\n\x06result\x1a\x93\x02\n\x0eImportResponse\x12\n\n\x02id\x18\x01 \x01(\r\x12V\n\x07success\x18\x02 \x01(\x0b\x32\x43.sass.embedded_protocol.InboundMessage.ImportResponse.ImportSuccessH\x00\x12\x0f\n\x05\x65rror\x18\x03 \x01(\tH\x00\x1a\x81\x01\n\rImportSuccess\x12\x10\n\x08\x63ontents\x18\x01 \x01(\t\x12.\n\x06syntax\x18\x02 \x01(\x0e\x32\x1e.sass.embedded_protocol.Syntax\x12\x1b\n\x0esource_map_url\x18\x03 \x01(\tH\x00\x88\x01\x01\x42\x11\n\x0f_source_map_urlB\x08\n\x06result\x1aO\n\x12\x46ileImportResponse\x12\n\n\x02id\x18\x01 \x01(\r\x12\x12\n\x08\x66ile_url\x18\x02 \x01(\tH\x00\x12\x0f\n\x05\x65rror\x18\x03 \x01(\tH\x00\x42\x08\n\x06result\x1a\x90\x01\n\x14\x46unctionCallResponse\x12\n\n\x02id\x18\x01 \x01(\r\x12\x30\n\x07success\x18\x02 \x01(\x0b\x32\x1d.sass.embedded_protocol.ValueH\x00\x12\x0f\n\x05\x65rror\x18\x03 \x01(\tH\x00\x12\x1f\n\x17\x61\x63\x63\x65ssed_argument_lists\x18\x04 \x03(\rB\x08\n\x06resultB\t\n\x07message\"\x97\x0f\n\x0fOutboundMessage\x12\x36\n\x05\x65rror\x18\x01 \x01(\x0b\x32%.sass.embedded_protocol.ProtocolErrorH\x00\x12S\n\x10\x63ompile_response\x18\x02 \x01(\x0b\x32\x37.sass.embedded_protocol.OutboundMessage.CompileResponseH\x00\x12\x45\n\tlog_event\x18\x03 \x01(\x0b\x32\x30.sass.embedded_protocol.OutboundMessage.LogEventH\x00\x12[\n\x14\x63\x61nonicalize_request\x18\x04 \x01(\x0b\x32;.sass.embedded_protocol.OutboundMessage.CanonicalizeRequestH\x00\x12O\n\x0eimport_request\x18\x05 \x01(\x0b\x32\x35.sass.embedded_protocol.OutboundMessage.ImportRequestH\x00\x12X\n\x13\x66ile_import_request\x18\x06 \x01(\x0b\x32\x39.sass.embedded_protocol.OutboundMessage.FileImportRequestH\x00\x12\\\n\x15\x66unction_call_request\x18\x07 \x01(\x0b\x32;.sass.embedded_protocol.OutboundMessage.FunctionCallRequestH\x00\x12S\n\x10version_response\x18\x08 \x01(\x0b\x32\x37.sass.embedded_protocol.OutboundMessage.VersionResponseH\x00\x1a\x8e\x01\n\x0fVersionResponse\x12\n\n\x02id\x18\x05 \x01(\r\x12\x18\n\x10protocol_version\x18\x01 \x01(\t\x12\x18\n\x10\x63ompiler_version\x18\x02 \x01(\t\x12\x1e\n\x16implementation_version\x18\x03 \x01(\t\x12\x1b\n\x13implementation_name\x18\x04 \x01(\t\x1a\xa2\x03\n\x0f\x43ompileResponse\x12Y\n\x07success\x18\x02 \x01(\x0b\x32\x46.sass.embedded_protocol.OutboundMessage.CompileResponse.CompileSuccessH\x00\x12Y\n\x07\x66\x61ilure\x18\x03 \x01(\x0b\x32\x46.sass.embedded_protocol.OutboundMessage.CompileResponse.CompileFailureH\x00\x12\x13\n\x0bloaded_urls\x18\x04 \x03(\t\x1a\x37\n\x0e\x43ompileSuccess\x12\x0b\n\x03\x63ss\x18\x01 \x01(\t\x12\x12\n\nsource_map\x18\x02 \x01(\tJ\x04\x08\x03\x10\x04\x1a{\n\x0e\x43ompileFailure\x12\x0f\n\x07message\x18\x01 \x01(\t\x12\x30\n\x04span\x18\x02 \x01(\x0b\x32\".sass.embedded_protocol.SourceSpan\x12\x13\n\x0bstack_trace\x18\x03 \x01(\t\x12\x11\n\tformatted\x18\x04 \x01(\tB\x08\n\x06resultJ\x04\x08\x01\x10\x02\x1a\xbd\x01\n\x08LogEvent\x12\x32\n\x04type\x18\x02 \x01(\x0e\x32$.sass.embedded_protocol.LogEventType\x12\x0f\n\x07message\x18\x03 \x01(\t\x12\x35\n\x04span\x18\x04 \x01(\x0b\x32\".sass.embedded_protocol.SourceSpanH\x00\x88\x01\x01\x12\x13\n\x0bstack_trace\x18\x05 \x01(\t\x12\x11\n\tformatted\x18\x06 \x01(\tB\x07\n\x05_spanJ\x04\x08\x01\x10\x02\x1a\x8e\x01\n\x13\x43\x61nonicalizeRequest\x12\n\n\x02id\x18\x01 \x01(\r\x12\x13\n\x0bimporter_id\x18\x03 \x01(\r\x12\x0b\n\x03url\x18\x04 \x01(\t\x12\x13\n\x0b\x66rom_import\x18\x05 \x01(\x08\x12\x1b\n\x0e\x63ontaining_url\x18\x06 \x01(\tH\x00\x88\x01\x01\x42\x11\n\x0f_containing_urlJ\x04\x08\x02\x10\x03\x1a\x43\n\rImportRequest\x12\n\n\x02id\x18\x01 \x01(\r\x12\x13\n\x0bimporter_id\x18\x03 \x01(\r\x12\x0b\n\x03url\x18\x04 \x01(\tJ\x04\x08\x02\x10\x03\x1a\x8c\x01\n\x11\x46ileImportRequest\x12\n\n\x02id\x18\x01 \x01(\r\x12\x13\n\x0bimporter_id\x18\x03 \x01(\r\x12\x0b\n\x03url\x18\x04 \x01(\t\x12\x13\n\x0b\x66rom_import\x18\x05 \x01(\x08\x12\x1b\n\x0e\x63ontaining_url\x18\x06 \x01(\tH\x00\x88\x01\x01\x42\x11\n\x0f_containing_urlJ\x04\x08\x02\x10\x03\x1a\x8e\x01\n\x13\x46unctionCallRequest\x12\n\n\x02id\x18\x01 \x01(\r\x12\x0e\n\x04name\x18\x03 \x01(\tH\x00\x12\x15\n\x0b\x66unction_id\x18\x04 \x01(\rH\x00\x12\x30\n\targuments\x18\x05 \x03(\x0b\x32\x1d.sass.embedded_protocol.ValueB\x0c\n\nidentifierJ\x04\x08\x02\x10\x03\x42\t\n\x07message\"e\n\rProtocolError\x12\x37\n\x04type\x18\x01 \x01(\x0e\x32).sass.embedded_protocol.ProtocolErrorType\x12\n\n\x02id\x18\x02 \x01(\r\x12\x0f\n\x07message\x18\x03 \x01(\t\"\x87\x02\n\nSourceSpan\x12\x0c\n\x04text\x18\x01 \x01(\t\x12@\n\x05start\x18\x02 \x01(\x0b\x32\x31.sass.embedded_protocol.SourceSpan.SourceLocation\x12\x43\n\x03\x65nd\x18\x03 \x01(\x0b\x32\x31.sass.embedded_protocol.SourceSpan.SourceLocationH\x00\x88\x01\x01\x12\x0b\n\x03url\x18\x04 \x01(\t\x12\x0f\n\x07\x63ontext\x18\x05 \x01(\t\x1a>\n\x0eSourceLocation\x12\x0e\n\x06offset\x18\x01 \x01(\r\x12\x0c\n\x04line\x18\x02 \x01(\r\x12\x0e\n\x06\x63olumn\x18\x03 \x01(\rB\x06\n\x04_end\"\xb8\x13\n\x05Value\x12\x36\n\x06string\x18\x01 \x01(\x0b\x32$.sass.embedded_protocol.Value.StringH\x00\x12\x36\n\x06number\x18\x02 \x01(\x0b\x32$.sass.embedded_protocol.Value.NumberH\x00\x12;\n\trgb_color\x18\x03 \x01(\x0b\x32&.sass.embedded_protocol.Value.RgbColorH\x00\x12;\n\thsl_color\x18\x04 \x01(\x0b\x32&.sass.embedded_protocol.Value.HslColorH\x00\x12\x32\n\x04list\x18\x05 \x01(\x0b\x32\".sass.embedded_protocol.Value.ListH\x00\x12\x30\n\x03map\x18\x06 \x01(\x0b\x32!.sass.embedded_protocol.Value.MapH\x00\x12;\n\tsingleton\x18\x07 \x01(\x0e\x32&.sass.embedded_protocol.SingletonValueH\x00\x12K\n\x11\x63ompiler_function\x18\x08 \x01(\x0b\x32..sass.embedded_protocol.Value.CompilerFunctionH\x00\x12\x43\n\rhost_function\x18\t \x01(\x0b\x32*.sass.embedded_protocol.Value.HostFunctionH\x00\x12\x43\n\rargument_list\x18\n \x01(\x0b\x32*.sass.embedded_protocol.Value.ArgumentListH\x00\x12;\n\thwb_color\x18\x0b \x01(\x0b\x32&.sass.embedded_protocol.Value.HwbColorH\x00\x12@\n\x0b\x63\x61lculation\x18\x0c \x01(\x0b\x32).sass.embedded_protocol.Value.CalculationH\x00\x12\x45\n\x0e\x63ompiler_mixin\x18\r \x01(\x0b\x32+.sass.embedded_protocol.Value.CompilerMixinH\x00\x1a&\n\x06String\x12\x0c\n\x04text\x18\x01 \x01(\t\x12\x0e\n\x06quoted\x18\x02 \x01(\x08\x1a\x41\n\x06Number\x12\r\n\x05value\x18\x01 \x01(\x01\x12\x12\n\nnumerators\x18\x02 \x03(\t\x12\x14\n\x0c\x64\x65nominators\x18\x03 \x03(\t\x1a\x43\n\x08RgbColor\x12\x0b\n\x03red\x18\x01 \x01(\r\x12\r\n\x05green\x18\x02 \x01(\r\x12\x0c\n\x04\x62lue\x18\x03 \x01(\r\x12\r\n\x05\x61lpha\x18\x04 \x01(\x01\x1aM\n\x08HslColor\x12\x0b\n\x03hue\x18\x01 \x01(\x01\x12\x12\n\nsaturation\x18\x02 \x01(\x01\x12\x11\n\tlightness\x18\x03 \x01(\x01\x12\r\n\x05\x61lpha\x18\x04 \x01(\x01\x1aL\n\x08HwbColor\x12\x0b\n\x03hue\x18\x01 \x01(\x01\x12\x11\n\twhiteness\x18\x02 \x01(\x01\x12\x11\n\tblackness\x18\x03 \x01(\x01\x12\r\n\x05\x61lpha\x18\x04 \x01(\x01\x1a\x87\x01\n\x04List\x12\x38\n\tseparator\x18\x01 \x01(\x0e\x32%.sass.embedded_protocol.ListSeparator\x12\x14\n\x0chas_brackets\x18\x02 \x01(\x08\x12/\n\x08\x63ontents\x18\x03 \x03(\x0b\x32\x1d.sass.embedded_protocol.Value\x1a\xa2\x01\n\x03Map\x12\x38\n\x07\x65ntries\x18\x01 \x03(\x0b\x32\'.sass.embedded_protocol.Value.Map.Entry\x1a\x61\n\x05\x45ntry\x12*\n\x03key\x18\x01 \x01(\x0b\x32\x1d.sass.embedded_protocol.Value\x12,\n\x05value\x18\x02 \x01(\x0b\x32\x1d.sass.embedded_protocol.Value\x1a\x1e\n\x10\x43ompilerFunction\x12\n\n\x02id\x18\x01 \x01(\r\x1a-\n\x0cHostFunction\x12\n\n\x02id\x18\x01 \x01(\r\x12\x11\n\tsignature\x18\x02 \x01(\t\x1a\x1b\n\rCompilerMixin\x12\n\n\x02id\x18\x01 \x01(\r\x1a\xa1\x02\n\x0c\x41rgumentList\x12\n\n\x02id\x18\x01 \x01(\r\x12\x38\n\tseparator\x18\x02 \x01(\x0e\x32%.sass.embedded_protocol.ListSeparator\x12/\n\x08\x63ontents\x18\x03 \x03(\x0b\x32\x1d.sass.embedded_protocol.Value\x12J\n\x08keywords\x18\x04 \x03(\x0b\x32\x38.sass.embedded_protocol.Value.ArgumentList.KeywordsEntry\x1aN\n\rKeywordsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12,\n\x05value\x18\x02 \x01(\x0b\x32\x1d.sass.embedded_protocol.Value:\x02\x38\x01\x1a\xef\x04\n\x0b\x43\x61lculation\x12\x0c\n\x04name\x18\x01 \x01(\t\x12M\n\targuments\x18\x02 \x03(\x0b\x32:.sass.embedded_protocol.Value.Calculation.CalculationValue\x1a\x95\x02\n\x10\x43\x61lculationValue\x12\x36\n\x06number\x18\x01 \x01(\x0b\x32$.sass.embedded_protocol.Value.NumberH\x00\x12\x10\n\x06string\x18\x02 \x01(\tH\x00\x12\x17\n\rinterpolation\x18\x03 \x01(\tH\x00\x12S\n\toperation\x18\x04 \x01(\x0b\x32>.sass.embedded_protocol.Value.Calculation.CalculationOperationH\x00\x12@\n\x0b\x63\x61lculation\x18\x05 \x01(\x0b\x32).sass.embedded_protocol.Value.CalculationH\x00\x42\x07\n\x05value\x1a\xea\x01\n\x14\x43\x61lculationOperation\x12=\n\x08operator\x18\x01 \x01(\x0e\x32+.sass.embedded_protocol.CalculationOperator\x12H\n\x04left\x18\x02 \x01(\x0b\x32:.sass.embedded_protocol.Value.Calculation.CalculationValue\x12I\n\x05right\x18\x03 \x01(\x0b\x32:.sass.embedded_protocol.Value.Calculation.CalculationValueB\x07\n\x05value*+\n\x0bOutputStyle\x12\x0c\n\x08\x45XPANDED\x10\x00\x12\x0e\n\nCOMPRESSED\x10\x01*)\n\x06Syntax\x12\x08\n\x04SCSS\x10\x00\x12\x0c\n\x08INDENTED\x10\x01\x12\x07\n\x03\x43SS\x10\x02*?\n\x0cLogEventType\x12\x0b\n\x07WARNING\x10\x00\x12\x17\n\x13\x44\x45PRECATION_WARNING\x10\x01\x12\t\n\x05\x44\x45\x42UG\x10\x02*8\n\x11ProtocolErrorType\x12\t\n\x05PARSE\x10\x00\x12\n\n\x06PARAMS\x10\x01\x12\x0c\n\x08INTERNAL\x10\x02*?\n\rListSeparator\x12\t\n\x05\x43OMMA\x10\x00\x12\t\n\x05SPACE\x10\x01\x12\t\n\x05SLASH\x10\x02\x12\r\n\tUNDECIDED\x10\x03*/\n\x0eSingletonValue\x12\x08\n\x04TRUE\x10\x00\x12\t\n\x05\x46\x41LSE\x10\x01\x12\x08\n\x04NULL\x10\x02*A\n\x13\x43\x61lculationOperator\x12\x08\n\x04PLUS\x10\x00\x12\t\n\x05MINUS\x10\x01\x12\t\n\x05TIMES\x10\x02\x12\n\n\x06\x44IVIDE\x10\x03\x42#\n\x1f\x63om.sass_lang.embedded_protocolP\x01\x62\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Sass
  module EmbeddedProtocol
    InboundMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.InboundMessage").msgclass
    InboundMessage::VersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.InboundMessage.VersionRequest").msgclass
    InboundMessage::CompileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.InboundMessage.CompileRequest").msgclass
    InboundMessage::CompileRequest::StringInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.InboundMessage.CompileRequest.StringInput").msgclass
    InboundMessage::CompileRequest::Importer = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.InboundMessage.CompileRequest.Importer").msgclass
    InboundMessage::CanonicalizeResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.InboundMessage.CanonicalizeResponse").msgclass
    InboundMessage::ImportResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.InboundMessage.ImportResponse").msgclass
    InboundMessage::ImportResponse::ImportSuccess = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.InboundMessage.ImportResponse.ImportSuccess").msgclass
    InboundMessage::FileImportResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.InboundMessage.FileImportResponse").msgclass
    InboundMessage::FunctionCallResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.InboundMessage.FunctionCallResponse").msgclass
    OutboundMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.OutboundMessage").msgclass
    OutboundMessage::VersionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.OutboundMessage.VersionResponse").msgclass
    OutboundMessage::CompileResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.OutboundMessage.CompileResponse").msgclass
    OutboundMessage::CompileResponse::CompileSuccess = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.OutboundMessage.CompileResponse.CompileSuccess").msgclass
    OutboundMessage::CompileResponse::CompileFailure = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.OutboundMessage.CompileResponse.CompileFailure").msgclass
    OutboundMessage::LogEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.OutboundMessage.LogEvent").msgclass
    OutboundMessage::CanonicalizeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.OutboundMessage.CanonicalizeRequest").msgclass
    OutboundMessage::ImportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.OutboundMessage.ImportRequest").msgclass
    OutboundMessage::FileImportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.OutboundMessage.FileImportRequest").msgclass
    OutboundMessage::FunctionCallRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.OutboundMessage.FunctionCallRequest").msgclass
    ProtocolError = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.ProtocolError").msgclass
    SourceSpan = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.SourceSpan").msgclass
    SourceSpan::SourceLocation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.SourceSpan.SourceLocation").msgclass
    Value = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.Value").msgclass
    Value::String = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.Value.String").msgclass
    Value::Number = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.Value.Number").msgclass
    Value::RgbColor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.Value.RgbColor").msgclass
    Value::HslColor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.Value.HslColor").msgclass
    Value::HwbColor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.Value.HwbColor").msgclass
    Value::List = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.Value.List").msgclass
    Value::Map = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.Value.Map").msgclass
    Value::Map::Entry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.Value.Map.Entry").msgclass
    Value::CompilerFunction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.Value.CompilerFunction").msgclass
    Value::HostFunction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.Value.HostFunction").msgclass
    Value::CompilerMixin = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.Value.CompilerMixin").msgclass
    Value::ArgumentList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.Value.ArgumentList").msgclass
    Value::Calculation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.Value.Calculation").msgclass
    Value::Calculation::CalculationValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.Value.Calculation.CalculationValue").msgclass
    Value::Calculation::CalculationOperation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.Value.Calculation.CalculationOperation").msgclass
    OutputStyle = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.OutputStyle").enummodule
    Syntax = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.Syntax").enummodule
    LogEventType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.LogEventType").enummodule
    ProtocolErrorType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.ProtocolErrorType").enummodule
    ListSeparator = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.ListSeparator").enummodule
    SingletonValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.SingletonValue").enummodule
    CalculationOperator = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("sass.embedded_protocol.CalculationOperator").enummodule
  end
end
