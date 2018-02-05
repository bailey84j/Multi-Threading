$MultiThread = New-Object PSObject -Property @{
    Threads = $((Get-WmiObject -Class win32_processor -Property NumberOfLogicalProcessors).NumberOfLogicalProcessors)
    Cores = $((Get-WmiObject -Class win32_processor -Property NumberOfLogicalProcessors).NumberOfLogicalProcessors)
    ScriptTimer = $True
    Logging = $True
    LogPath = $env:TEMP
    LogName = "Mutlithread_$(get-date -Format yyyyMMdd)_$(get-date -Format hhmm).log"
    StatLogging = $True
    StatLogPath = $env:TEMP
    StatLogName = "MultiThreadStats_$(get-date -Format yyyyMMdd)_$(get-date -Format hhmm).log"
}