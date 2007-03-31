#!/usr/bin/perl

################################################################################
# File: .................. 05testGeteBayOfficialTime.t
# Location: .............. <user_defined_location>/eBay-API/t
# Original Author: ....... Milenko Milanovic
# Last Modified By: ...... Jeff Nokes
# Last Modified: ......... 07/13/2006 @ 12:10
#
# Description:
# Simple test installation script that will attempt to make the very simple
# eBay XML API call 'GeteBayOfficialTime'.  This will prove the module is set
# up properly, and at least the intheritance tree of classes is working, along
# with the autogenerated code related to GeteBayOfficialTime.
################################################################################





BEGIN {


# Debug use only
#diag("05.begin - \$::REQUIRED_MODS = $::REQUIRED_MODS");


# Required Incldues
# ------------------------------------------------------------------------------
  use strict;                    # Help control variable hell.
  use warnings;                  # Tell us if Perl wants to complain about
                                 # anything.
  use Test::More tests => 3;     # 3 distinct tests.



  SKIP: {

    # Check for the existence of any dependencies on other modules/classes.
      eval {
         require File::Spec;
         require eBay::API::XML::Call::GeteBayOfficialTime;
         require eBay::API::XML::DataType::Enum::AckCodeType;
      };

      # If there was an error given by the eval above, then the user must have
      # skipped the auto-generation phase, or there is some other module
      # dependency that is breaking things, thus we should skip this test.
        if ($@) {
           skip(
              "SKIP 1:  Most likely dependency on another module not found:  [ $@ ]\n\n",
              2
           );
        }# end if
        else {
           $::REQUIRED_MODS=1;
        }

    # If we got this far, we must be OK to do the test, test required includes.
      use File::Spec;              # Needed to support system independent file/dir
                                   # paths.

    # Tests 1-2
      use_ok('eBay::API::XML::Call::GeteBayOfficialTime');     # Try to import
                                                               # symbols from
                                                               # this class.

      use_ok('eBay::API::XML::DataType::Enum::AckCodeType');   # Needed to check
                                                               # the ack of the
                                                               # test API call.

  }# end SKIP block

} # end BEGIN block


# Debug use only
#diag("05.middle - \$::REQUIRED_MODS = $::REQUIRED_MODS");


  SKIP: {

    # Local Variables
      # eBay API credentials file.  This should have been generated by Makefile.PL
      # if the user provided the proper arguments to it.
        my $credentials_file_name = 'test_api.credentials';

      # System independent path location of $credentials_file_name.
        my $credentials_file_path = File::Spec->catdir(
                                       File::Spec->rel2abs(File::Spec->curdir()),
                                       't',
                                       $credentials_file_name
                                    );


    # See if there is a file with the eBay API credentials that was provided by
    # the user.  If there was then attempt to use it.  If there wasn't, then we
    # need to skip this test all-together.

      # Check for the existence of the test_api.credentials file.
        eval {
           require $credentials_file_path
        };

      # If there was an error give by the eval above, then the file must not
      # be there, and we cannot perform the test.
        if ($@) {
           skip(
              "SKIP 2:  No API credentials given by user when executing Makefile.PL, cannot run test.",
               1
           );
        }# end if

      # Else-if there was an error given by the first eval above, then the user must have
      # skipped the auto-generation phase, or there is some other module
      # dependency that is breaking things, thus we should skip this test.
        elsif (!$::REQUIRED_MODS) {
           skip(
              "SKIP 3:  Requred modules were not found to run the next test, skipping.\n\n",
              1
           );
        }# end if

      # Else, the file was there, and we need to attempt to perform the test.
      # (Assuming implicit access to global variables defined in
      # $credentials_file.)
        else {

           # Generate and instance of the call.
             my $pCall = eBay::API::XML::Call::GeteBayOfficialTime->new();

           # Set all necessary properties for the call.
             $pCall->setDevID($::arg_devid) if $::arg_devid;
             $pCall->setAppID($::arg_appid) if $::arg_appid;
             $pCall->setCertID($::arg_certid) if $::arg_certid;
             $pCall->setAuthToken($::arg_authtoken) if $::arg_authtoken;

             # Default site to be US (core).
               $pCall->setSiteID('0');

             # Default webservice interface to be Sandbox.
               $pCall->setApiUrl('https://api.sandbox.ebay.com/ws/api.dll');


           # Execute the API call.
             $pCall->execute();


           # Print out the request & response for users, so they can see the
           # output, and any possible errors, since we aren't checking for errors
           # in this test script.
             # Print the request
               print STDERR (
                  "\n\n" .
                  'API Call:  GeteBayOfficalTime - REQUEST DUMP' . "\n" .
                  '--------------------------------------------------------------------------------' . "\n" .
                  $pCall->getHttpRequestAsString(1) . "\n" .
                  "\n"
               );
             # Print the response
               print STDERR (
                  "\n" .
                  'API Call:  GeteBayOfficalTime - RESPONSE DUMP' . "\n" .
                  '--------------------------------------------------------------------------------' . "\n" .
                  $pCall->getHttpResponseAsString(1) .
                  "\n\n"
               );


           # Test 3
           # Determine if the API call was a success.  If it was, get the
           # timestamp from the response, and show it to the user.
             is(
                $pCall->getAck(),                                      # Get the ack property from the API response.
                eBay::API::XML::DataType::Enum::AckCodeType::Success,  # Ack property
                'Testing API Call "GeteBayOfficialTime" '              # Name of test
             ); # end is()

        }# end else

  }# end SKIP block


# Debug use only
#diag("05.end - \$::REQUIRED_MODS = $::REQUIRED_MODS");
