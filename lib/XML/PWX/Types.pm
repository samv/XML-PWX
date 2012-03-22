
package XML::PWX::Device;

# <xsd:complexType name="device">
# 	<xsd:sequence>
# 		<xsd:element name="make" type="xsd:string" minOccurs="0"/>
# 		<xsd:element name="model" type="xsd:string" minOccurs="0"/>
# 		<xsd:element name="stopdetectionsetting" type="xsd:double" minOccurs="0" />
# 		<!-- stop detection setting:  seconds with no samples available will be treated as stopped
# 			ex: 30 would treat any samples with greater than 30 seconds elapsed
# 			between them to be treated as stoppage
# 		-->
# 		<xsd:element name="elevationchangesetting" type="xsd:double" minOccurs="0" />
# 		<!-- elevation change setting:  meters that must change to alter climbing and descending calculations 
# 			ex: 10 would ignore any deviations less than 10 meters in elevation in climbing and descending calculations
# 		-->
# 		<xsd:element name="extension" minOccurs="0">
# 			<xsd:complexType>
# 				<!-- allows for future extension data -->
# 				<xsd:sequence>
# 					<xsd:any namespace="##any" processContents="lax" minOccurs="0"
# 						maxOccurs="unbounded"/>
# 				</xsd:sequence>
# 			</xsd:complexType>
# 		</xsd:element>
# 	</xsd:sequence>
# 	<xsd:attribute name="id" type="xsd:string"/>
# </xsd:complexType>

package XML::PWX::MinMaxAvg;
# <xsd:complexType name="minMaxAvg">
# 	<xsd:attribute name="max" type="xsd:double"/>
# 	<xsd:attribute name="min" type="xsd:double"/>
# 	<xsd:attribute name="avg" type="xsd:double"/>
# </xsd:complexType>

package XML::PWX::Athlete;
# <xsd:complexType name="athlete">
# 	<xsd:sequence>
# 		<xsd:element name="name" type="xsd:string" minOccurs="0"/>
# 		<xsd:element name="weight" type="xsd:double" minOccurs="0"/>
# 		<!--weight in kg-->
# 	</xsd:sequence>
# </xsd:complexType>

package XML::PWX::SummaryData;
# <xsd:complexType name="summaryData">
# 	<xsd:sequence>
# 		<xsd:element name="beginning" type="xsd:double"/>
# 		<!--beggining is seconds offset from beginning of wkt -->
# 		<xsd:element name="duration" type="xsd:double"/>
# 		<!-- duration in seconds -->
# 		<xsd:element name="durationstopped" type="xsd:double" minOccurs="0"/>
# 		<!-- duration of time when stopped in seconds -->
# 		<xsd:element name="work" type="xsd:double" minOccurs="0"/>
# 		<!-- work in kJ -->
# 		<xsd:element name="tss" type="xsd:double" minOccurs="0"/>
# 		<xsd:element name="normalizedPower" type="xsd:double" minOccurs="0"/>
# 		<!-- power in watts -->
# 		<xsd:element name="hr" type="minMaxAvg" minOccurs="0"/>
# 		<!-- heart rate in bpm -->
# 		<xsd:element name="spd" type="minMaxAvg" minOccurs="0"/>
# 		<!-- speed in meters per second -->
# 		<xsd:element name="pwr" type="minMaxAvg" minOccurs="0"/>
# 		<!-- power in watts -->
# 		<xsd:element name="torq" type="minMaxAvg" minOccurs="0"/>
# 		<!-- torque in nM -->
# 		<xsd:element name="cad" type="minMaxAvg" minOccurs="0"/>
# 		<!-- cadence in rpm -->
# 		<xsd:element name="dist" type="xsd:double" minOccurs="0"/>
# 		<!-- distance in meters -->
# 		<xsd:element name="alt" type="minMaxAvg" minOccurs="0"/>
# 		<!-- altitude in meters -->
# 		<xsd:element name="temp" type="minMaxAvg" minOccurs="0"/>
# 		<!-- temperature in celcius -->
# 		<xsd:element name="variabilityIndex" type="xsd:int" minOccurs="0"/>
# 		<xsd:element name="climbingelevation" type="xsd:double" minOccurs="0"/>
# 		<!-- elevation climbed in meters -->
# 		<xsd:element name="descendingelevation" type="xsd:double" minOccurs="0"/>
# 		<!-- elevation descended in meters -->			
# 		<xsd:element name="extension" minOccurs="0">
# 			<xsd:complexType>
# 				<!-- allows for future extension data -->
# 				<xsd:sequence>
# 					<xsd:any namespace="##any"
# 						processContents="lax" minOccurs="0"
# 						maxOccurs="unbounded"/>
# 				</xsd:sequence>
# 			</xsd:complexType>
# 		</xsd:element>			
# 	</xsd:sequence>
# </xsd:complexType>

subtype 'XML::PWX::Latitude' => as "Float" => ...;
# <!-- Other types used by PWX -->
# <xsd:simpleType name="latitudeType">
# 	<xsd:restriction base="xsd:double">
# 		<xsd:minInclusive value="-90.0"/>
# 		<xsd:maxInclusive value="90.0"/>
# 	</xsd:restriction>
# </xsd:simpleType>

subtype 'XML::PWX::Longitude' => as "Float" => ...;
# <xsd:simpleType name="longitudeType">
# 	<xsd:restriction base="xsd:double">
# 		<xsd:minInclusive value="-180.0"/>
# 		<xsd:maxInclusive value="180.0"/>
# 	</xsd:restriction>
# </xsd:simpleType>

enum 'XML::PWX::Sport' => qw(Bike Run), ...;
# <xsd:simpleType name="sportTypes">
# 	<xsd:restriction base="xsd:string">
# 		<xsd:enumeration value="Bike"/>
# 		<xsd:enumeration value="Run"/>
# 		<xsd:enumeration value="Walk"/>
# 		<xsd:enumeration value="Swim"/>
# 		<xsd:enumeration value="Brick"/>
# 		<xsd:enumeration value="Cross train"/>
# 		<xsd:enumeration value="Race"/>
# 		<xsd:enumeration value="Day Off"/>
# 		<xsd:enumeration value="Mountain Bike"/>
# 		<xsd:enumeration value="Strength"/>
# 		<xsd:enumeration value="XC Ski"/>
# 		<xsd:enumeration value="Rowing"/>
# 		<xsd:enumeration value="Other"/>
# 	</xsd:restriction>
# </xsd:simpleType>
