#!/usr/bin/perl

package eBay::API::XML::Call::AddSecondChanceItem::AddSecondChanceItemResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AddSecondChanceItemResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::AddSecondChanceItem::AddSecondChanceItemResponseType

=head1 DESCRIPTION

AddSecondChanceItem response for a new Second Chance Offer listing.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::AddSecondChanceItem::AddSecondChanceItemResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::ItemIDType;


my @gaProperties = ( [ 'EndTime', 'xs:dateTime', '', '', '' ]
	, [ 'ItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'StartTime', 'xs:dateTime', '', '', '' ]
                    );
push @gaProperties, @{eBay::API::XML::ResponseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::ResponseDataType::getAttributesList()};

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



=head2 setEndTime()

Indicates the date and time when the second chance offer listing expires,
at which time the listing ends (if the recipient user does not purchase
the item first).

#    Argument: 'xs:dateTime'

=cut

sub setEndTime {
  my $self = shift;
  $self->{'EndTime'} = shift
}

=head2 getEndTime()

  Returned: Always
#    Returns: 'xs:dateTime'

=cut

sub getEndTime {
  my $self = shift;
  return $self->{'EndTime'};
}


=head2 setItemID()

Contains the item ID for the new second chance
offer listing. Different from the original ItemID passed in the request.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

#    Argument: 'ns:ItemIDType'

=cut

sub setItemID {
  my $self = shift;
  $self->{'ItemID'} = shift
}

=head2 getItemID()

  Returned: Always
#    Returns: 'ns:ItemIDType'

=cut

sub getItemID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemID'
		,'eBay::API::XML::DataType::ItemIDType');
}


=head2 setStartTime()

Indicates the date and time when the the new second chance offer listing
became active and the recipient user could purchase the item.

#    Argument: 'xs:dateTime'

=cut

sub setStartTime {
  my $self = shift;
  $self->{'StartTime'} = shift
}

=head2 getStartTime()

  Returned: Always
#    Returns: 'xs:dateTime'

=cut

sub getStartTime {
  my $self = shift;
  return $self->{'StartTime'};
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
