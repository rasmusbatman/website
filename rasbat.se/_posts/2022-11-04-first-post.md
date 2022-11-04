---
layout: post
title: First post
date: 2022-11-04 09:32:00 +0100
categories:
 - AV/IT
tags:
 - informational
---

Hey, this is just a test post to demonstrate some of the functionalities.
This website is served using Vercel and the content is hosted on a GitHub repository.
It uses Jekyll to transform markdown files into static websites which is really useful!

- You can render everything in HTML that you're able to write in markdown, and a little more.
- Categories and tags are supported.
  You can filter the archive by clicking on them.
- Check out the GitHub repo using [this link](https://github.com/rasmusbatman/website).

Things like *italics*, **bold text**, ~~strikethroughs~~, and a ***~~combination~~*** of them work just fine.
There's even monospace formatting for code `like this`.

Here's an example of an image:

![](/assets/2022-11-04-first-post-01.jpg)

Because of Ruby, Jekyll supports code snippets with proper syntax highlighting.
The gem in question is called rouge and a list of supported languages is available [here](https://github.com/rouge-ruby/rouge/wiki/List-of-supported-languages-and-lexers).

```csharp
// https://help.crestron.com/simpl_sharp/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Crestron.SimplSharp;

namespace SIMPLSharpLibrary2

{
    /// <summary>
    /// TestBoundary has 2 members : myBoundary and currentValue.
    /// An event will be  triggered whenever currentValue goes over myBoundary.
    /// </summary>
    public class TestBoundary
    {
        private short myBoundary = 75;
        private short currentValue = 70;
        /// <summary>
        /// Definition for Event onOutsideBoundary
        /// </summary>
        public event BoundaryHandler onOutsideBoundary;
        /// <summary>
        /// Function Signature of the event handler for onOutsideBoundary
        /// </summary>
        /// <param name="o">reference to Object that raised the event</param>
        /// <param name="e">object of class EventArgs</param>
        public delegate void BoundaryHandler(object o, EventArgs e);
        /// <summary>
        /// Constructor
        /// </summary>
        public TestBoundary()
        {
            currentValue = 72;
        }
        /// <summary>
        /// Property for private member upperLimit
        /// </summary>
        public int MyBoundary
        {
            get { return myBoundary; }
            set { myBoundary = (short) value; }
        }
        /// <summary>
        /// Checks the new value against myBoundary
        /// and executes the event if necessary.
        /// </summary>
        public short CurrentValue
        {
            get { return currentValue; }
            set {
                if (value > myBoundary)
                {
                    if (onOutsideBoundary != null)
                    {
                        onOutsideBoundary(null, null);
                    }
                }
                currentValue = value;
            }
        }
    }
}
```