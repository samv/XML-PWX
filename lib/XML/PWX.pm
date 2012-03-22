
package XML::PWX;

our $VERSION = "0.01";

use Moose;
with qw(XML::PWX::Node);
use PRANG::Graph;

#<xsd:element name="pwx"><xsd:complexType><xsd:sequence>
sub root_element {"pwx"}

# <xsd:element name="workout" minOccurs="0" maxOccurs="unbounded">
use XML::PWX::Workout;
has_element "workout" => (
    is => "ro",
    isa => "ArrayRef[XML::PWX::Workout]",
    xml_min => 0,
);
# </xsd:element>

# <!-- allows for future extension data -->
# <xsd:element name="extension" minOccurs="0">
#	<xsd:complexType>
#		<xsd:sequence>
#			<xsd:any namespace="##any" processContents="lax" minOccurs="0"
#				maxOccurs="unbounded"/>
#		</xsd:sequence>
#	</xsd:complexType>
# </xsd:element>
use XML::PWX::Extension;
has_element "extension" => (
    is => "ro",
    isa => "ArrayRef[XML::PWX::Extension]",
    xml_min => 0,
);

# <xsd:attribute name="version" type="xsd:string" use="required" fixed="1.0"/>
# this attribute is "fixed", meaning that nothing in the string other
# than '1.0' is conformant to this schema.
use MooseX::Util::TypeConstraints;
subtype "XML::PWX::VersionString" => (
    as => "Str",
    where => sub { $_ eq "1.0" },
);
    
has_attr "version" => (
    is => "ro",
    isa => "VersionString",
    xml_required => 1,
    default => "1.0",
);

# <xsd:attribute name="creator" type="xsd:string" use="required"/>
has_attr "creator" => (
    is => "ro",
    isa => "Str",
    xml_required => 1,
    default => "XML::PWX version $VERSION",
);

#<!-- version 1.0 -->
#</xsd:complexType></xsd:element>

use XML::PWX::Types;

#</xsd:schema>

1;
