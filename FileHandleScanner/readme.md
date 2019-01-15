#File Handle Scanner
A powershell script that wraps [Mark Russinovich's file handle program 'Handle'](https://docs.microsoft.com/en-us/sysinternals/downloads/handle). It scans all open file handles for a given string and dumps the results to a file.

## Example
```
# From another console window run the Sandbox.exe project
powershell -file Scan.ps1 SandboxLib.dll

# After it runs you should notice a filehandlescanner.log file that contains any results.
```