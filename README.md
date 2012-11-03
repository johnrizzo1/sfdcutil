# SFDCUtil [![Build Status](https://secure.travis-ci.org/johnrizzo1/sfdcutil.png?branch=master)][travis] [![Dependency Status](https://gemnasium.com/johnrizzo1/sfdcutil.png?travis)][gemnasium]
SFDCUtil is a set of libraries that I've created to help me perform common tasks 
for working with salesforce.com as well as a command line tool for using some of
the features.

[travis]: http://travis-ci.org/johnrizzo1/sfdcutil
[gemnasium]: https://gemnasium.com/johnrizzo1/sfdcutil

## Installation
Add require 'sfdcutil' to your Gemfile and execute:

    $ bundle

Or install it yourself:

    $ gem install sfdcutil

## Resources
* [View Source on GitHub][code]
* [Report Issues on GitHub][issues]
* [Read More at the Wiki][wiki]

[code]: https://github.com/johnrizzo1/sfdcutil
[issues]: https://github.com/johnrizzo1/sfdcutil/issues
[wiki]: https://wiki.github.com/johnrizzo1/sfdcutil

## Usage Examples

    $ sfdcutil -h
    Usage: sfdcutil COMMAND [OPTIONS]

    Commands
         status - get the status of all instances

    Options
        -u, --url URL                    trust URL
        -i, --instance INSTANCE          which instance do you want to get the status of
        -v, --[no-]verbose               Run verbosely
        -h, --help                       help

Getting a single instance status

    $ sfdcutil status --instance "NA1"
        Instance Status
            NA1 Instance available

Get a status of all instances

    $ sfdcutil status
        Instance Status
     AP0 (Japan) Instance available
      AP1 (APAC) Instance available
      EU0 (EMEA) Instance available
             EU1 Instance available
             EU2 Instance available
       NA0 (SSL) Instance available
             NA1 Instance available
             NA2 Instance available
             NA3 Instance available
             NA4 Instance available
             NA5 Instance available
             NA6 Instance available
             NA7 Instance available
             NA8 Instance available
             NA9 Instance available
            NA10 Instance available
            NA11 Instance available
            NA12 Instance available
            NA13 Instance available
            NA14 Instance available
     CS0 (TAPP0) Instance available
             CS1 Instance available
             CS2 Instance available
             CS3 Instance available
             CS4 Instance available
             CS5 Instance available
             CS6 Instance available
             CS7 Instance available
             CS8 Instance available
             CS9 Instance available
            CS10 Instance available
            CS11 Instance available
            CS12 Instance available
            CS13 Instance available
            CS14 Instance available
            CS15 Instance available
            CS16 Instance available
            CS17 Instance available

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Contact
I can be reached by sending an email to johnrizzo1 at gmail dot com

## Disclaimer

I am currently a Salesforce.com employee.  The views expressed are my own and not those of salesforce.com

## Supported Ruby Versions
This library aims to support and is [tested against][travis] the following Ruby
implementations:

* Ruby 1.9.3
* [JRuby][]

[jruby]: http://www.jruby.org/

If something doesn't work on one of these interpreters, it should be considered
a bug.

This library may inadvertently work (or seem to work) on other Ruby
implementations, however support will only be provided for the versions listed
above.

If you would like this library to support another Ruby version, you may
volunteer to be a maintainer. Being a maintainer entails making sure all tests
run and pass on that implementation. When something breaks on your
implementation, you will be personally responsible for providing patches in a
timely fashion. If critical issues for a particular implementation exist at the
time of a major release, support for that Ruby version may be dropped.

## Copyright
Copyright (c) 2012 John Rizzo.
See [LICENSE][] for details.
[license]: https://github.com/intridea/oauth2/blob/master/LICENSE.md

## Versions
See [VERSIONS][] for details.
[versions]: https://github.com/johnrizzo1/sfdcutil/blob/master/VERSIONS.md
