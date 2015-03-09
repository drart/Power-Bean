Power Bean
==========

Connect a `LightBlue Bean <https://punchthrough.com/bean/>`_ to a `PowerSwitch Tail II <http://www.powerswitchtail.com/>`_ to turn things on and off!

The iOS app is built using `C4 <http://www.c4ios.com/>`_, a great framework for getting started with iOS programming. 

The original idea was to be able to power cycle my router when it went choked or to turn it off when I left the house. 

Bean Setup
----------

* Connect GND of Bean to IN- on Powerswitch Tail
* Connect D0 of Bean to IN+ on Powerswitch Tail
* Upload PowerBeanFirmware to the Bean 

.. image https://raw.githubusercontent.com/drart/Power-Bean/master/img/PowerSwitchTail.jpg

Issues
------
Like many Bean projects, say goodbye to your battery. While the sketch has a long naptime, which should minimize the battery drain, the PowerSwitch actually draws 3ma from the Bean. When I first got it working the light would go on, but not the relay. Although your Bean can operate with a battery in the low 2v range, it isn't enough to trigger the relay. 

Links
-----
* https://punchthrough.com/files/bean/sdk-docs/index.html
* http://techvalleyprojects.blogspot.ca/2012/04/powerswitch-tail-ii-and-arduino.html
* http://wilko.me/wordpress/?p=299
* Found `this awesome project <https://github.com/mplewis/bean-sous-vide>`_ after I finished...

TODO
----
* http://stackoverflow.com/questions/8990310/animate-spinner-when-loading-new-page 
* Disconnect Bean when app loses focus
* Reconnect Bean when app comes back into focus
* Fix the visual layout a bit more to make it easier to deal with connection issues
* Hack Bean to use USB cable like `this <https://punchthrough.com/bean/examples/mood-light/>`_
