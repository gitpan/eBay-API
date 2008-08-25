#!/usr/bin/perl

package eBay::API::XML::Call::SetPromotionalSaleListings::SetPromotionalSaleListingsResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SetPromotionalSaleListingsResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::SetPromotionalSaleListings::SetPromotionalSaleListingsResponseType

=head1 DESCRIPTION

Contains the status of a promotional sale.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::SetPromotionalSaleListings::SetPromotionalSaleListingsResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::Enum::PromotionalSaleStatusCodeType;


my @gaProperties = ( [ 'Status', 'ns:PromotionalSaleStatusCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::PromotionalSaleStatusCodeType', '' ]
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



=head2 setStatus()

Contains the status of a promotional sale.

#    Argument: 'ns:PromotionalSaleStatusCodeType'

=cut

sub setStatus {
  my $self = shift;
  $self->{'Status'} = shift
}

=head2 getStatus()

  Returned: Always
#    Returns: 'ns:PromotionalSaleStatusCodeType'

=cut

sub getStatus {
  my $self = shift;
  return $self->{'Status'};
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
