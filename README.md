# utilities
small scripts for reasons

## pingIt.bat
I wanted to get a log of response times but also include the timestamp for that ping. The ping command in windows doesn't include any timestamp information so I created this one to run for a few times and log it out to a file. 
### caveats:
* This can't be used with hosts like "https://google.com". I meant it mainly to go to direct IPs. You can specify "google.com" and it works, though.
* Currently there is not error handling if the ping request times out.
