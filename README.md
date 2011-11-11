# OmniAuth 37signals

This gem contains the unofficial 37signals strategy for OmniAuth.

## Basic Usage

  use OmniAuth::Builder do
    provider "37signals", ENV['37SIGNALS_CLIENT_ID'], ENV['37SIGNALS_SECRET']
  end

## Supported Flows

Supports the server flow as described in the draft spec at [http://tools.ietf.org/html/draft-ietf-oauth-v2-05](http://tools.ietf.org/html/draft-ietf-oauth-v2-05). See [this Google Groups discussion](http://groups.google.com/group/37signals-api/browse_thread/thread/86b0da52134c1b7e) for more information.

## Ruby

Tested with the following Ruby versions:

- MRI 1.9.2
- MRI 1.8.7

## License ('cause we live in a world with lawyers)

Copyright (c) 2011 by Will Barrett

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

