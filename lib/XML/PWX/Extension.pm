
package XML::PWX::Extension;

use Moose;
use PRANG::Graph;
with qw(XML::PWX::Node);

use XML::PWX::Extension::Role;

# <xsd:element name="extension" minOccurs="0">
#	<xsd:complexType>
#		<xsd:sequence>
#			<xsd:any namespace="##any" processContents="lax" minOccurs="0"
#				maxOccurs="unbounded"/>
#		</xsd:sequence>

has_element "ext" => (
    xml_nodeName => "*",
    xmlns => "*",
    xml_min => "0",
    is => "ro",
    isa => "ArrayRef[XML::PWX::Extension::Role]",
);

#	</xsd:complexType>
# </xsd:element>
1;
