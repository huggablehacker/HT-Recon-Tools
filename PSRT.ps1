cls
Write-Host 'HHs Awsome PS Script to do cool recon on websites. Using the HackerTarget.com API.'
Write-Host 

$search = Read-Host -Prompt 'Input URL or IP'
function Show-Menu

{
     param (
           [string]$Title = 'My Menu'
     )
     cls
     Write-Host "================ $Title ================"
     
     Write-Host "1: Press '1' Tracert."
     Write-Host "2: Press '2' Test Ping"
     Write-Host "3: Press '3' DNS Lookup."
     Write-Host "1: Press '4' DNS Host Records."
     Write-Host "2: Press '5' Reverse DNS."
     Write-Host "3: Press '6' Whois Lookup"
     Write-Host "3: Press '7' GeoIP – IP Location"
     Write-Host "1: Press '8' Reverse IP"
     Write-Host "2: Press '9' HTTP Header Check."
     Write-Host "3: Press '10' Extract Links From Page"
     Write-Host "Q: Press 'Q' to quit."
}

do
{
     Show-Menu

     $input = Read-Host "Please make a selection"
     switch ($input)
     {
           '1' {
                cls

            [System.Diagnostics.Process]::Start("https://api.hackertarget.com/mtr/?q=$search")
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$search | out-file Tracert.csv

                cls
           } '2' {
                cls
                [System.Diagnostics.Process]::Start("https://api.hackertarget.com/nping/?q=$search")
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$search | out-file testping.csv
                cls
           } '3' {
                cls
                [System.Diagnostics.Process]::Start("https://api.hackertarget.com/dnslookup/?q=$search")
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$search | out-file Dnslookup.csv
                cls
           } 
             '4' {
                cls
                [System.Diagnostics.Process]::Start("https://api.hackertarget.com/hostsearch/?q=$search")
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$serch | out-file DNShostrecords.csv
                cls
           } '5' {
                cls
                [System.Diagnostics.Process]::Start("https://api.hackertarget.com/reversedns/?q=$search")
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$search | out-file reversedns.csv
                cls
           }
             '6' {
                cls
                 [System.Diagnostics.Process]::Start("https://api.hackertarget.com/whois/?q=$search")
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$search | out-file whoislookup.csv
                 cls
           } '7' {
                cls
                [System.Diagnostics.Process]::Start("https://api.hackertarget.com/geoip/?q=$search")
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$search | out-file geoip.csv
                cls
           }
             '8' {
                cls
                 [System.Diagnostics.Process]::Start("https://api.hackertarget.com/reverseiplookup/?q=$search")
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$search | out-file reverseip.csv
                 cls
           } '9' {
                cls
                [System.Diagnostics.Process]::Start("https://api.hackertarget.com/httpheaders/?q=$search")
              Invoke-Restmethod -url https://api.hackertarget.com/mtr/?q=$search | out-file headercheck.csv
                cls
           }
           '10' {
                cls
                [System.Diagnostics.Process]::Start("https://api.hackertarget.com/pagelinks/?q=$search")
              Invoke-Restmethod –url https://api.hackertarget.com/mtr/?q=$search | out-file extractlink.csv
                cls
           }
           'q' {
                return
           }

     }
     pause
}
until ($input -eq 'q')
