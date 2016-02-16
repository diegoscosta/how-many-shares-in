How Many Shares In
=====
Track URL shares with Ruby

[![Build Status](https://travis-ci.org/diegoscosta/how-many-shares-in.svg?branch=master)](https://travis-ci.org/diegoscosta/how-many-shares-in)

Installation
------------

You can install by cloning this repository:
```ssh
git clone https://github.com/diegoscosta/how-many-shares-in.git
```

Then inside the how-many-shares-in folder run:
```ssh
bundle install
```

You can also add 'How Many Shares In' in your script
```ruby
require 'how-many-shares-in/lib/HowManySharesIn.rb'
```

...and your favorite social network.
```ruby
require 'how-many-shares-in/lib/networks/pinterest.rb'
```

Dependencies
----
* Bundle
* HTTParty

Usage
-----

**Printing shares count**
```ruby
pinterest = HowManySharesIn::Pinterest.new 'http://myurl.com'
puts pinterest.shares
```
