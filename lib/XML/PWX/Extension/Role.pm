
package XML::PWX::Extension::Role;

# "anything goes" type, defined with:
#<xsd:any namespace="##any" processContents="lax" minOccurs="0"
#	maxOccurs="unbounded"/>

use Moose::Role;
use PRANG::Graph;

with 'PRANG::Graph';

1;

#'with' this type to define an extension type
