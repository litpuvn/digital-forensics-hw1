# digital-forensics-hw1

### TEST with BOOT_COMPLETED event on Emulator #####

Step 1. Run adb with root
```
./adb root
```

Step 2. Send broadcast message to Trojan to test with BOOT_COMPLETED event
```
./adb shell am broadcast -a android.intent.action.BOOT_COMPLETED -p com.example.mytrojan
```


### Common commands ####

Start emulator
```
./emulator -avd Nexus_5X_API_28 -wipe-data
```
View devices:
```
./adb devices
```
Install to device emulator-5554:
```
./adb -s emulator-5554 install path/to/apk
```
Uninstall from device
```
 ./adb uninstall net.tecnotopia.SimpleCalculator
```
