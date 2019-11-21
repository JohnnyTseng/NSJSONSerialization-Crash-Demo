This is a demo project for NSJSONSerialization crashes on iOS 13 when a string cannot be transformed to UTF-8 string, feedback submitted to Apple `FB7458717`

## Steps to reproduce
Download the demo project, run on iOS 13 devices (with Zombie object enabled), and it crashes.

## Expected result
To generate an error, and not crash the application
"Error Domain=NSCocoaErrorDomain Code=3852 "The string 0xXXXXXXX failed to convert to UTF8" UserInfo={NSDebugDescription=The string 0xXXXXXXX failed to convert to UTF8}"

## Actual result
Crashes on iOS 13 devices with a "-[NSError retain]: message sent to deallocated instance" message

## Additional info
It works on iOS 10, iOS 11, iOS 12 devices. I think it's a regression.