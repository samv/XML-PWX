
package XML::PWX::Segment;

use Moose;
use PRANG::Graph;

#<xsd:complexType>
#	<xsd:sequence>
#		<xsd:element name="name" type="xsd:string" minOccurs="0"/>
has_element "name" => (
    isa => "Str",
    xml_required => 0,
);
#		<xsd:element name="summarydata" type="summaryData"/>
has_element "summary" => (
    isa => "XML::PWX::SummaryData",
    xml_nodeName => "summarydata",
);

#		<!-- allows for future extension data -->
#		<xsd:element name="extension" minOccurs="0">
#			<xsd:complexType>
#			<xsd:sequence>
#			<xsd:any namespace="##any"
#			processContents="lax" minOccurs="0"
#			maxOccurs="unbounded"/>
#			</xsd:sequence>
#			</xsd:complexType>
#has_element "ext" => (
#    isa => "XML::PWX::Extension::Segment",
#    xml_nodeName => "extension",
#);
#		</xsd:element>
#	</xsd:sequence>
#</xsd:complexType>

with 'XML::PWX::Node';

1;
