#!/usr/bin/perl

package eBay::API::XML::Call::GetCategorySpecifics::GetCategorySpecificsRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetCategorySpecificsRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetCategorySpecifics::GetCategorySpecificsRequestType

=head1 DESCRIPTION

Item Specifics are typical aspects of items in the same category.
They enable users to classify items by presenting descriptive details
in a structured way. For example, in a jewelry category, you might
describe a locket using "Gemstone=Amber", but in a
Washers & Dryers category, you might use "Type=Top-Loading" instead.
</p>
<p>
GetCategorySpecifics returns the most popular Item Specific names and values
for each leaf category you request. (eBay determines the popularity based on
several factors, such as the number of recent listings and/or
recently sold listings in the same category that have used the same name
or value.)
</p>
<p>
When you are listing an item, we recommend that you consider using these
popular names and values in your Item Specifics, because standard terms
can help buyers (and comparison shopping tools) understand the details
of your item more easily.
Also these names and values are more likely to be indexed for
title and description searches in the future.
If you don't see a name or value you need, you can add your own in your
listing request. (If that name or value becomes popular, it may be
recommended in these results over time.)
</p>
<p>
See ItemSpecificsEnabled in GetCategoryFeatures to determine which
categories support listing with custom Item Specifics.
</p>



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetCategorySpecifics::GetCategorySpecificsRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");



my @gaProperties = ( [ 'CategoryID', 'xs:string', '1', '', '' ]
	, [ 'LastUpdateTime', 'xs:dateTime', '', '', '' ]
	, [ 'MaxNames', 'xs:int', '', '', '' ]
	, [ 'MaxValuesPerName', 'xs:int', '', '', '' ]
	, [ 'Name', 'xs:string', '', '', '' ]
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



=head2 setCategoryID()

A leaf category to retrieve recommended Item Specifics for.
(This call returns no results for a parent category.)
To determine which leaf categories support custom Item Specifics,
use GetCategoryFeatures and GetCategories.
You can specify multiple leaf categories (but more categories
can result in longer response times). If you specify the same
ID twice, we use the first instance.

  RequiredInput: Yes
#    Argument: reference to an array  
                      of 'xs:string'

=cut

sub setCategoryID {
  my $self = shift;
  $self->{'CategoryID'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getCategoryID()

#    Returns: reference to an array  
                      of 'xs:string'

=cut

sub getCategoryID {
  my $self = shift;
  return $self->_getDataTypeArray('CategoryID');
}


=head2 setLastUpdateTime()

Causes the recommendation engine to check whether the list of
popular Item Specifics for each specified category has changed
since this date and time. If specified, this call returns no
Item Specifics; it only returns whether the data has changed
for any of the requested categories.<br>
<br>
Typically, you pass in the Timestamp that was
returned the last time you refreshed the list of names and values
for the same categories. If the Updated flag returns true for any
categories in the response, call GetCategorySpecifics again
for those categories to get the latest names and values.
(As downloading all the data may affect your application's
performance, it may help to only download Item Specifics
for a category if they have changed since you last checked.)

  RequiredInput: No
#    Argument: 'xs:dateTime'

=cut

sub setLastUpdateTime {
  my $self = shift;
  $self->{'LastUpdateTime'} = shift
}

=head2 getLastUpdateTime()

#    Returns: 'xs:dateTime'

=cut

sub getLastUpdateTime {
  my $self = shift;
  return $self->{'LastUpdateTime'};
}


=head2 setMaxNames()

Maximum number of Item Specifics to return
per category (where each Item Specific is identified
by a unique name within the category).
Use this to retrieve fewer results per category.
For example, if you only want up to 2 per category
(the top 2 most popular names), specify 2.

Max: 15 (see GeteBayDetails)
Default: 15
Min: 1

  RequiredInput: No
#    Argument: 'xs:int'

=cut

sub setMaxNames {
  my $self = shift;
  $self->{'MaxNames'} = shift
}

=head2 getMaxNames()

#    Returns: 'xs:int'

=cut

sub getMaxNames {
  my $self = shift;
  return $self->{'MaxNames'};
}


=head2 setMaxValuesPerName()

Maximum number of values to retrieve per Item Specific.
Use this to retrieve fewer values per name.
For example, if you only want the most popular value,
specify 1.

Max: 10 (see GeteBayDetails)
Default: 10
Min: 1

  RequiredInput: No
#    Argument: 'xs:int'

=cut

sub setMaxValuesPerName {
  my $self = shift;
  $self->{'MaxValuesPerName'} = shift
}

=head2 getMaxValuesPerName()

#    Returns: 'xs:int'

=cut

sub getMaxValuesPerName {
  my $self = shift;
  return $self->{'MaxValuesPerName'};
}


=head2 setName()

The name of one Item Specific name to find values for.
Use this if you want to find out whether a name
that the seller provided has recommended values.
If you specify multiple leaf categories in the request,
the recommendation engine returns all matching
names and values it finds for each of those categories.
At the time of this writing, this value is case-sensitive.
(Wildcards are not supported.)

MaxLength: 30 (see GeteBayDetails)

  RequiredInput: No
#    Argument: 'xs:string'

=cut

sub setName {
  my $self = shift;
  $self->{'Name'} = shift
}

=head2 getName()

#    Returns: 'xs:string'

=cut

sub getName {
  my $self = shift;
  return $self->{'Name'};
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