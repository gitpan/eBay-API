#!/usr/bin/perl

package eBay::API::XML::DataType::CharityInfoType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CharityInfoType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::CharityInfoType

=head1 DESCRIPTION

Contains information about a nonprofit charity organization.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::CharityInfoType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::CharityStatusCodeType;


my @gaProperties = ( [ 'CharityDomain', 'xs:int', '1', '', '' ]
	, [ 'CharityID', 'xs:string', '', '', '' ]
	, [ 'CharityRegion', 'xs:int', '', '', '' ]
	, [ 'DisplayLogoSelling', 'xs:boolean', '', '', '' ]
	, [ 'DisplayNameInCheckout', 'xs:boolean', '', '', '' ]
	, [ 'LogoURL', 'xs:anyURI', '', '', '' ]
	, [ 'LogoURLSelling', 'xs:anyURI', '', '', '' ]
	, [ 'Mission', 'xs:string', '', '', '' ]
	, [ 'Name', 'xs:string', '', '', '' ]
	, [ 'SearchableString', 'xs:string', '', '', '' ]
	, [ 'Status', 'ns:CharityStatusCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CharityStatusCodeType', '' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( [ 'id', 'xs:string', '', '', '' ]
                    );
push @gaAttributes, @{eBay::API::XML::BaseDataType::getAttributesList()};

=head1 Subroutines:

=cut

sub new {
  my $classname = shift;
  my %args = @_;
  my $self = $classname->SUPER::new(%args);
  return $self;
}

sub isScalar {
   return 0; 
}



=head2 setCharityDomain()

Domain (mission area) that a nonprofit charity organization belongs to.
Nonprofit charity organizations may belong to multiple mission areas. Meaning
of input values differs depending on the site. See GetCharities in the
API Developer's Guide for the meaning of each input/output value. CharityDomain
input value must be valid for that SiteID.

#    Argument: reference to an array  
                      of 'xs:int'

=cut

sub setCharityDomain {
  my $self = shift;
  $self->{'CharityDomain'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getCharityDomain()

  Calls: GetCharities
  Returned: Conditionally

#    Returns: reference to an array  
                      of 'xs:int'

=cut

sub getCharityDomain {
  my $self = shift;
  return $self->_getDataTypeArray('CharityDomain');
}


=head2 setCharityID()

A unique identification number assigned by eBay to registered
non-profit charity organizations. This number is returned in
GetCharitiesResponse as an id attribute in the parent Charity node.

#    Argument: 'xs:string'

=cut

sub setCharityID {
  my $self = shift;
  $self->{'CharityID'} = shift
}

=head2 getCharityID()

#    Returns: 'xs:string'

=cut

sub getCharityID {
  my $self = shift;
  return $self->{'CharityID'};
}


=head2 setCharityRegion()

Region that the nonprofit charity organization is associated with.
A specific nonprofit charity organization may be associated with only
one region. Meaning of input values differs depending on the site. See GetCharities in the API Developer's Guide for the meaning of each
input/output value. CharityRegion input value must be valid for that SiteID.

#    Argument: 'xs:int'

=cut

sub setCharityRegion {
  my $self = shift;
  $self->{'CharityRegion'} = shift
}

=head2 getCharityRegion()

  Calls: GetCharities
  Returned: Conditionally

#    Returns: 'xs:int'

=cut

sub getCharityRegion {
  my $self = shift;
  return $self->{'CharityRegion'};
}


=head2 setDisplayLogoSelling()

This boolean value should be set to true if an alternate logo URL should
be supplied by sellers using the eBay Sell Your Item flow. If this field
has not been set to true, it will return the default value of false.

#    Argument: 'xs:boolean'

=cut

sub setDisplayLogoSelling {
  my $self = shift;
  $self->{'DisplayLogoSelling'} = shift
}

=head2 isDisplayLogoSelling()

  Calls: GetCharities
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isDisplayLogoSelling {
  my $self = shift;
  return $self->{'DisplayLogoSelling'};
}


=head2 setDisplayNameInCheckout()

Set this boolean value to true if the name of the nonprofit company should
be shown during checkout. If this field has not been set to true,
it will return the default value of false. If the user rolls their mouse
over the name of the nonprofit company, they will see the nonprofit company's
mission statement.

#    Argument: 'xs:boolean'

=cut

sub setDisplayNameInCheckout {
  my $self = shift;
  $self->{'DisplayNameInCheckout'} = shift
}

=head2 isDisplayNameInCheckout()

  Calls: GetCharities
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isDisplayNameInCheckout {
  my $self = shift;
  return $self->{'DisplayNameInCheckout'};
}


=head2 setLogoURL()

A URL with the location of the nonprofit charity organization's logo image.
Logo must be JPG  or GIF format, with a size maximum of 50 KB. This image
is displayed in the Giving Works item listing.

#    Argument: 'xs:anyURI'

=cut

sub setLogoURL {
  my $self = shift;
  $self->{'LogoURL'} = shift
}

=head2 getLogoURL()

  Calls: GetCharities
  Returned: Conditionally

#    Returns: 'xs:anyURI'

=cut

sub getLogoURL {
  my $self = shift;
  return $self->{'LogoURL'};
}


=head2 setLogoURLSelling()

An alternate URL, provided by the seller during the Sell Your Item flow
with the location of the nonprofit charity organization's logo image. This
URL will be returned if it exists in the eBay database. Otherwise, the field
will be empty. The logo must be JPG  or GIF format, with a size maximum of 50 KB. This image is displayed in the Giving Works item listing.

#    Argument: 'xs:anyURI'

=cut

sub setLogoURLSelling {
  my $self = shift;
  $self->{'LogoURLSelling'} = shift
}

=head2 getLogoURLSelling()

  Calls: GetCharities
  Returned: Conditionally

#    Returns: 'xs:anyURI'

=cut

sub getLogoURLSelling {
  my $self = shift;
  return $self->{'LogoURLSelling'};
}


=head2 setMission()

The stated mission of the nonprofit charity organization. This
mission is displayed in the Giving Works item listing.

MaxLength: 511

#    Argument: 'xs:string'

=cut

sub setMission {
  my $self = shift;
  $self->{'Mission'} = shift
}

=head2 getMission()

  Calls: GetCharities
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getMission {
  my $self = shift;
  return $self->{'Mission'};
}


=head2 setName()

A name assigned to a specified nonprofit organization.

MaxLength: 150

#    Argument: 'xs:string'

=cut

sub setName {
  my $self = shift;
  $self->{'Name'} = shift
}

=head2 getName()

  Calls: GetCharities
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getName {
  my $self = shift;
  return $self->{'Name'};
}


=head2 setSearchableString()

Keyword string to be used for search purposes.

#    Argument: 'xs:string'

=cut

sub setSearchableString {
  my $self = shift;
  $self->{'SearchableString'} = shift
}

=head2 getSearchableString()

#    Returns: 'xs:string'

=cut

sub getSearchableString {
  my $self = shift;
  return $self->{'SearchableString'};
}


=head2 setStatus()

The status of the nonprofit charity organization.

#    Argument: 'ns:CharityStatusCodeType'

=cut

sub setStatus {
  my $self = shift;
  $self->{'Status'} = shift
}

=head2 getStatus()

#    Returns: 'ns:CharityStatusCodeType'

=cut

sub getStatus {
  my $self = shift;
  return $self->{'Status'};
}




=head2 setId()

A unique identification number assigned by eBay to registered
nonprofit charity organizations.

#    Argument: 'xs:string'

=cut

sub setId {
  my $self = shift;
  $self->{'id'} = shift
}

=head2 getId()

  Calls: GetCharities
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getId {
  my $self = shift;
  return $self->{'id'};
}



##  Attribute and Property lists
sub getPropertiesList {
   my $self = shift;
   return \@gaProperties;
}

sub getAttributesList {
   my $self = shift;
   return \@gaAttributes;
}



1;   
