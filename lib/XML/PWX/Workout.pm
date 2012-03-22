
package XML::PWX::Workout;

use PRANG::Graph;


# <xsd:element name="workout" minOccurs="0" maxOccurs="unbounded">
# 	<xsd:complexType>
# 		<xsd:sequence>
# 			<xsd:element name="athlete" type="athlete" minOccurs="0"/>
has_element "athlete" => isa => "XML::PWX::Athlete", ...;
# 			<xsd:element name="goal" type="xsd:string" minOccurs="0"/>
has_element "goal" => isa => "Str", ...;
# 			<xsd:element name="sportType" type="sportTypes" minOccurs="0"/>
has_element "sport_type" => (
    xml_nodeName => "sportType", => isa => "XML::PWX::Sport", ...
);
# 			<xsd:element name="title" type="xsd:string" minOccurs="0"/>							
has_element "title" => isa => "Str", ...;
# 			<xsd:element name="cmt" type="xsd:string" minOccurs="0"/>
has_element "comment" => isa => "Str", xml_nodeName => "cmt", ...;
# 			<xsd:element name="code" type="xsd:string" minOccurs="0"/>
has_element "code" => isa => "Str", xml_nodeName => "cmt", ...;
# 			<xsd:element name="device" type="device" minOccurs="1"/>
has_element "device" => isa => "XML::PWX::Device", xml_required => 1, ...;
# 			<xsd:element name="time" type="xsd:dateTime" minOccurs="0"/>
has_element "time" => (
    isa => "PRANG::XMLSchema::dateTime", ...
);
# 			<xsd:element name="summarydata" type="summaryData"/>
has_element "summary" => (
    isa => "XML::PWX::SummaryData", xml_required => 1, ...
);

# 			<xsd:sequence>
# 				<xsd:element name="segment" minOccurs="0" maxOccurs="unbounded">
has_element "segment" => (
    isa => "ArrayRef[XML::PWX::Segment]", xml_min => 0, ...
);

# 				</xsd:element>
# 			</xsd:sequence>

# 			<xsd:sequence>
# 				<!-- elements must appear in this order -->
#[no shit, XML Schema Sherlock]

# 				<xsd:element name="sample" minOccurs="0" maxOccurs="unbounded">
has_attr "sample" => (
    xml_min => 0,
    isa => "ArrayRef[XML::PWX::Sample]",
    ...
);
# 				</xsd:element>
# 			</xsd:sequence>
# 			<xsd:element name="extension" minOccurs="0">
# 				<xsd:complexType>
# 					<!-- allows for future extension data -->
# 					<xsd:sequence>
# 						<xsd:any namespace="##any" processContents="lax"
# 							minOccurs="0" maxOccurs="unbounded"/>
# 					</xsd:sequence>
# 				</xsd:complexType>
# 			</xsd:element>
# 		</xsd:sequence>
# 		<xsd:attribute name="id"/>
# 	</xsd:complexType>
# </xsd:element>

with 'XML::XML::Node';

1;
