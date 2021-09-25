# TWRP Device configuration for Xiaomi Miatoll

![miatoll](https://github.com/Encom-Enterprise/stuff/raw/main/devices/miatoll.png)


###### How to compile

```sh
. build/envsetup.sh

export LC_ALL=C

lunch omni_miatoll-eng

mka -jX clobber && mka -jX recoveryimage
```
Note: 'X' in `mka -jX recoveryimage` is the number of cores your processor has.
For example, a quad-core processor would have `mka -j4 recoveryimage` as the command.
