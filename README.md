# SFDCUtil

SFDCUtil is a set of libraries that I've created to help me perform common tasks for working with salesforce.com

## Installation

Add this line to your application's Gemfile:

    $ gem 'sfdcutil'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sfdcutil

## Usage

$ sfdcutil -h
Usage: sfdcutil COMMAND [OPTIONS]

Commands
     trust:status - get the status of all instances

Options
    -u, --url URL                    trust URL
    -i, --instance INSTANCE          which instance do you want to get the status of
    -v, --[no-]verbose               Run verbosely
    -h, --help                       help

Getting a single instance status

$ sfdcutil trust:status --instance "NA1"
    Instance Status
         NA1 Instance available

Get a status of all instances

$ sfdcutil trust:status
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