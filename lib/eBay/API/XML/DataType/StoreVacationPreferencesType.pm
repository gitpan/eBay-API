#!/usr/bin/perl

package eBay::API::XML::DataType::StoreVacationPreferencesType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. StoreVacationPreferencesType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::StoreVacationPreferencesType

=head1 DESCRIPTION

Specifies a set of Store vacation preferences.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::StoreVacationPreferencesType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'DisplayMessageStoreCustomText', 'xs:boolean', '', '', '' ]
	, [ 'HideFixedPriceStoreItems', 'xs:boolean', '', '', '' ]
	, [ 'MessageItem', 'xs:boolean', '', '', '' ]
	, [ 'MessageStore', 'xs:boolean', '', '', '' ]
	, [ 'MessageStoreCustomText', 'xs:string', '', '', '' ]
	, [ 'OnVacation', 'xs:boolean', '', '', '' ]
	, [ 'ReturnDate', 'xs:dateTime', '', '', '' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( 
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



=head2 setDisplayMessageStoreCustomText()

Display custom message on the Store pages instead of the default message.

MaxLength: 10000

  Calls: SetStorePreferences
  RequiredInput: No

#    Argument: 'xs:boolean'

=cut

sub setDisplayMessageStoreCustomText {
  my $self = shift;
  $self->{'DisplayMessageStoreCustomText'} = shift
}

=head2 isDisplayMessageStoreCustomText()

  Calls: GetStorePreferences
  Returned: Always

#    Returns: 'xs:boolean'

=cut

sub isDisplayMessageStoreCustomText {
  my $self = shift;
  return $self->{'DisplayMessageStoreCustomText'};
}


=head2 setHideFixedPriceStoreItems()

Hide Store Inventory format items when the Store owner is on vacation.<br><br>
When OnVacation is true, the Store owner's listings do not appear on Express,
regardless of the listing format and regardless of how the seller has configured
their vacation settings for items that appear on eBay.

  Calls: SetStorePreferences
  RequiredInput: No

#    Argument: 'xs:boolean'

=cut

sub setHideFixedPriceStoreItems {
  my $self = shift;
  $self->{'HideFixedPriceStoreItems'} = shift
}

=head2 isHideFixedPriceStoreItems()

  Calls: GetStorePreferences
  Returned: Always

#    Returns: 'xs:boolean'

=cut

sub isHideFixedPriceStoreItems {
  my $self = shift;
  return $self->{'HideFixedPriceStoreItems'};
}


=head2 setMessageItem()

Add a message when the Store owner is on vacation to all their active items.

  Calls: SetStorePreferences
  RequiredInput: No

#    Argument: 'xs:boolean'

=cut

sub setMessageItem {
  my $self = shift;
  $self->{'MessageItem'} = shift
}

=head2 isMessageItem()

  Calls: GetStorePreferences
  Returned: Always

#    Returns: 'xs:boolean'

=cut

sub isMessageItem {
  my $self = shift;
  return $self->{'MessageItem'};
}


=head2 setMessageStore()

Add a message to all the Store pages when the Store owner is on vacation.

  Calls: SetStorePreferences
  RequiredInput: No

#    Argument: 'xs:boolean'

=cut

sub setMessageStore {
  my $self = shift;
  $self->{'MessageStore'} = shift
}

=head2 isMessageStore()

  Calls: GetStorePreferences
  Returned: Always

#    Returns: 'xs:boolean'

=cut

sub isMessageStore {
  my $self = shift;
  return $self->{'MessageStore'};
}


=head2 setMessageStoreCustomText()

The custom message to display for the Store when the user is on vacation.
May contain HTML markup.

  Calls: SetStorePreferences
  RequiredInput: No

#    Argument: 'xs:string'

=cut

sub setMessageStoreCustomText {
  my $self = shift;
  $self->{'MessageStoreCustomText'} = shift
}

=head2 getMessageStoreCustomText()

  Calls: GetStorePreferences
  Returned: Conditionally

#    Returns: 'xs:string'

=cut

sub getMessageStoreCustomText {
  my $self = shift;
  return $self->{'MessageStoreCustomText'};
}


=head2 setOnVacation()

Specifies whether the Store owner is on vacation.<br>
When OnVacation is true, the Store owner's listings do not appear on Express,
regardless of the listing format and regardless of how the seller has configured
their vacation settings for items that appear on eBay.

  Calls: SetStorePreferences
  RequiredInput: No

#    Argument: 'xs:boolean'

=cut

sub setOnVacation {
  my $self = shift;
  $self->{'OnVacation'} = shift
}

=head2 isOnVacation()

  Calls: GetStorePreferences
  Returned: Always

#    Returns: 'xs:boolean'

=cut

sub isOnVacation {
  my $self = shift;
  return $self->{'OnVacation'};
}


=head2 setReturnDate()

Seller return date from vacation.

  Calls: SetStorePreferences
  RequiredInput: No

#    Argument: 'xs:dateTime'

=cut

sub setReturnDate {
  my $self = shift;
  $self->{'ReturnDate'} = shift
}

=head2 getReturnDate()

  Calls: GetStorePreferences
  Returned: Conditionally

#    Returns: 'xs:dateTime'

=cut

sub getReturnDate {
  my $self = shift;
  return $self->{'ReturnDate'};
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
