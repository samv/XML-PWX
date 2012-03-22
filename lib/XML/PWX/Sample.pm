
package XML::PWX::Sample;

use Moose;

use PRANG::Graph;

#<xsd:complexType>
# 	<xsd:sequence>
# 		<xsd:element name="timeoffset" type="xsd:double"/>
# 		<!--timeoffset is seconds offset from beginning of wkt -->
has_element "time_offset" => (xml_nodeName => "timeoffset", isa => "Float", ...);
# 		<!-- Performance info -->
# 		<xsd:element name="hr" type="xsd:unsignedByte"
# 			minOccurs="0"/>
has_element "time_offset" => (
    xml_required => 0,
    xml_nodeName => "hr", isa => "PRANG::XMLSchema::unsignedByte", ...
);
# 		<!-- heart rate in bpm -->
# 		<xsd:element name="spd" type="xsd:double" minOccurs="0"/>
# 		<!-- speed in mps -->
has_element "time_offset" => (xml_nodeName => "timeoffset", isa => "Float", ...);
# 		<xsd:element name="pwr" type="xsd:short" minOccurs="0"/>
# 		<!-- power in watts -->
# 		<xsd:element name="torq" type="xsd:double" minOccurs="0"/>
# 		<!-- torque in N-m -->
# 		<xsd:element name="cad" type="xsd:unsignedByte"
# 			minOccurs="0"/>
# 		<!-- cadence in rpm -->
# 		<!-- Position info -->
# 		<xsd:element name="dist" type="xsd:double" minOccurs="0"/>
# 		<!-- distance in meters from beginning -->
# 		<xsd:element name="lat" type="latitudeType"
# 			minOccurs="0"/>
# 		<xsd:element name="lon" type="longitudeType"
# 			minOccurs="0"/>
# 		<xsd:element name="alt" type="xsd:double" minOccurs="0"/>
# 		<!-- elevation in meters -->
# 		<xsd:element name="temp" type="xsd:double" minOccurs="0"/>
# 		<!-- temperature in celcius -->
# 		<!-- Real time if available -->
# 		<xsd:element name="time" type="xsd:dateTime"
# 			minOccurs="0"/>
# 		<xsd:element name="extension" minOccurs="0">
# 			<xsd:complexType>
# 			<!-- allows for future extension data -->
# 			<xsd:sequence>
# 			<xsd:any namespace="##any"
# 			processContents="lax" minOccurs="0"
# 			maxOccurs="unbounded"/>
# 			</xsd:sequence>
# 			</xsd:complexType>
# 		</xsd:element>
# 	</xsd:sequence>
# </xsd:complexType>

with 'XML::PWX::Node';

1;
