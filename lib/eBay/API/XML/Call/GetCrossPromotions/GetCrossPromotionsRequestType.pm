#!/usr/bin/perl

package eBay::API::XML::Call::GetCrossPromotions::GetCrossPromotionsRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetCrossPromotionsRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetCrossPromotions::GetCrossPromotionsRequestType

=head1 DESCRIPTION

Retrieves a list of upsell or cross-sell items associated with the specifeid
item ID. The seller must be the owner of an eBay Stores storefront to
cross-promote items.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetCrossPromotions::GetCrossPromotionsRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::ItemIDType;
use eBay::API::XML::DataType::Enum::PromotionMethodCodeType;
use eBay::API::XML::DataType::Enum::TradingRoleCodeType;


my @gaProperties = ( [ 'ItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'PromotionMethod', 'ns:PromotionMethodCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::PromotionMethodCodeType', '' ]
	, [ 'PromotionViewMode', 'ns:TradingRoleCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::TradingRoleCodeType', '' ]
                    );
push @gaProperties, @{eBay::API::XML::RequestDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::RequestDataType::getAttributesList()};

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



=head2 setItemID()

The unique ID of the referring item. The cross-promoted
items will supplement this item.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: Yes
#    Argument: 'ns:ItemIDType'

=cut

sub setItemID {
  my $self = shift;
  $self->{'ItemID'} = shift
}

=head2 getItemID()

#    Returns: 'ns:ItemIDType'

=cut

sub getItemID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemID'
		,'eBay::API::XML::DataType::ItemIDType');
}


=head2 setPromotionMethod()

The cross-promotion method you want to use for the
returned list, either UpSell or CrossSell.

  RequiredInput: Yes
#    Argument: 'ns:PromotionMethodCodeType'

=cut

sub setPromotionMethod {
  my $self = shift;
  $self->{'PromotionMethod'} = shift
}

=head2 getPromotionMethod()

#    Returns: 'ns:PromotionMethodCodeType'

=cut

sub getPromotionMethod {
  my $self = shift;
  return $self->{'PromotionMethod'};
}


=head2 setPromotionViewMode()

The role of the person requesting to view the cross-promoted
items, either seller or buyer. Default is buyer.

  RequiredInput: No
#    Argument: 'ns:TradingRoleCodeType'

=cut

sub setPromotionViewMode {
  my $self = shift;
  $self->{'PromotionViewMode'} = shift
}

=head2 getPromotionViewMode()

#    Returns: 'ns:TradingRoleCodeType'

=cut

sub getPromotionViewMode {
  my $self = shift;
  return $self->{'PromotionViewMode'};
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
