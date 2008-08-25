#!/usr/bin/perl

package eBay::API::XML::Call::GetOrderTransactions::GetOrderTransactionsResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetOrderTransactionsResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetOrderTransactions::GetOrderTransactionsResponseType

=head1 DESCRIPTION

Response to GetOrderTransactions request.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetOrderTransactions::GetOrderTransactionsResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::OrderArrayType;


my @gaProperties = ( [ 'OrderArray', 'ns:OrderArrayType', ''
	     ,'eBay::API::XML::DataType::OrderArrayType', '1' ]
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



=head2 setOrderArray()

An array of Orders.

#    Argument: 'ns:OrderArrayType'

=cut

sub setOrderArray {
  my $self = shift;
  $self->{'OrderArray'} = shift
}

=head2 getOrderArray()

  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ReturnAll
#    Returns: 'ns:OrderArrayType'

=cut

sub getOrderArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'OrderArray'
		,'eBay::API::XML::DataType::OrderArrayType');
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
