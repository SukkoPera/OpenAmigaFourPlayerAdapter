# OpenAmigaFourPlayerAdapter
OpenAmigaFourPlayerAdapter is an Open Hardware adapter that allows connecting two additional joysticks to Amiga Computers, bringing the total to four.

![Board](https://raw.githubusercontent.com/SukkoPera/OpenAmigaFourPlayerAdapter/master/img/render-top.png)

### Summary
Some Amiga Games support more than the two joysticks you can connect directly to all Amiga models. The two extra joysticks are supposed to be connected to the parallel port through an adapter. OpenAmigaFourPlayerAdapter is an Open Hardware implementation of such an adapter, based on [Tomi Engdahl's Multi-joystick extender circuit](https://www.epanorama.net/documents/joystick/amiga_circuits.html), which claims to be the de-facto standard for this. The same circuit was found on other sources, so this should not be too far away from the actual truth.

The adapter slightly improves that design by also providing 5V power to the joystick ports.

Testing was only carried out with DynaBlaster. [Here is a list](https://aminet.net/package/docs/misc/FourPlayerGames_EN) of more games that *should* hopefully work with it. Actually the list includes the same circuit the adapter is based on, so there are good chances this will be the case. Please report any failures.

### Usage
Building the adapter is very easy, just note that you need all male connectors, for both the DB-9 and the DB-25 ports.

The adapter needs no configuration. The only option is whether the 5V power pins of the joystick ports should actually be powered or not. The adapter itself is fully passive and consumes no current. Most old-style joysticks do not need power either, but if you are using one with autofire functionalities or maybe [some kind of "smart" adapter](https://github.com/SukkoPera/OpenPSX2AmigaPadAdapter), it probably will. Now, the problem is that parallel ports are only required to supply a current of 10 mA, which is very little and will probably not be enough to power even the simplest controller that needs power.

Luckily, most (if not all) Amiga models actually go beyond that and are able to provide about 100 mA. I really recommend you to check personally what is inside your Amiga: there should be a  current-limiting resistor connected to pin 14 (It should be labeled E501 on the A500): I found out that this is usually 47 ohm 1/2 W (I checked on an A500 rev 8A, an A600 rev 1.5 and an A1200 rev 1D.4). If this is your case as well, then you will be fine, but **please make sure this applies in your case, or you might blow that resistor**!

Once you are sure your Amiga can bear the current, just close the jumper placed near the port(s) of interest.

Finally, please note that you are recommended to **only connect/disconnect the adapter and the joysticks while your Amiga is powered off**, in order to avoid any risk of damage.

### Releases
If you want to get this board produced, you are recommended to get [the latest release](https://github.com/SukkoPera/OpenAmigaFourPlayerAdapter/releases) rather than the current git version, as the latter might be under development and is not guaranteed to be working.

Every release is accompanied by its Bill Of Materials (BOM) file and any relevant notes about it, which you are recommended to read carefully.

### License
The OpenAmigaFourPlayerAdapter documentation, including the design itself, is copyright &copy; SukkoPera 2020.

OpenAmigaFourPlayerAdapter is Open Hardware licensed under the [CERN OHL v. 1.2](http://ohwr.org/cernohl).

You may redistribute and modify this documentation under the terms of the CERN OHL v.1.2. This documentation is distributed *as is* and WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES whatsoever with respect to its functionality, operability or use, including, without limitation, any implied warranties OF MERCHANTABILITY, SATISFACTORY QUALITY, FITNESS FOR A PARTICULAR PURPOSE or infringement. We expressly disclaim any liability whatsoever for any direct, indirect, consequential, incidental or special damages, including, without limitation, lost revenues, lost profits, losses resulting from business interruption or loss of data, regardless of the form of action or legal theory under which the liability may be asserted, even if advised of the possibility or likelihood of such damages.

A copy of the full license is included in file [LICENSE.pdf](LICENSE.pdf), please refer to it for applicable conditions. In order to properly deal with its terms, please see file [LICENSE_HOWTO.pdf](LICENSE_HOWTO.pdf).

The contact points for information about manufactured Products (see section 4.2) are listed in file [PRODUCT.md](PRODUCT.md).

Any modifications made by Licensees (see section 3.4.b) shall be recorded in file [CHANGES.md](CHANGES.md).

The Documentation Location of the original project is https://github.com/SukkoPera/OpenAmigaFourPlayerAdapter/.

### Support the Project
Since the project is open you are free to get the PCBs made by your preferred manufacturer, however in case you want to support the development, you can order them from PCBWay through this link:

[![PCB from PCBWay](https://www.pcbway.com/project/img/images/frompcbway.png)](https://www.pcbway.com/project/shareproject/OpenAmigaFourPlayerAdapter_V1.html)

You get my gratitude and cheap, professionally-made and good quality PCBs, I get some credit that will help with this and [other projects](https://www.pcbway.com/project/member/shareproject/?bmbid=41100). You won't even have to worry about the various PCB options, it's all pre-configured for you!

Also, if you still have to register to that site, [you can use this link](https://www.pcbway.com/setinvite.aspx?inviteid=41100) to get some bonus initial credit (and yield me some more).

Again, if you want to use another manufacturer, feel free to, don't feel obligated :). But then you can buy me a coffee if you want:

<a href='https://ko-fi.com/L3L0U18L' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://az743702.vo.msecnd.net/cdn/kofi2.png?v=2' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>

### Get Help
If you need help or have questions, you can join [the official Telegram group](https://t.me/joinchat/HUHdWBC9J9JnYIrvTYfZmg).

### Thanks
- Graham P. for sending me the design of a similar adapter he made.
- Tomi Engdahl for publishing the circuit.
