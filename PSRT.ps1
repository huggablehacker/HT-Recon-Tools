cls
Write-Host 'HHs Awsome PS Script to do cool recon on websites. Using the HackerTarget.com API.'
Write-Host 

$search = Read-Host -Prompt 'Input URL or IP'
mkdir $search
cd $search

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
     Write-Host "4: Press '4' DNS Host Records."
     Write-Host "5: Press '5' Reverse DNS."
     Write-Host "6: Press '6' Whois Lookup"
     Write-Host "7: Press '7' GeoIP – IP Location"
     Write-Host "8: Press '8' Reverse IP"
     Write-Host "9: Press '9' HTTP Header Check."
     Write-Host "10: Press '10' Extract Links From Page"
     Write-Host "11: Press '11' Full Gambit"
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
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$search | out-file Tracert.txt
                cls
           } '2' {
                cls
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$search | out-file testping.txt
                cls
           } '3' {
                cls
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$search | out-file Dnslookup.txt
                cls
           } 
             '4' {
                cls
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$serch | out-file DNShostrecords.txt
                cls
           } '5' {
                cls
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$search | out-file reversedns.txt
                cls
           }
             '6' {
                cls
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$search | out-file whoislookup.txt
                 cls
           } '7' {
                cls
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$search | out-file geoip.txt
                cls
           }
             '8' {
                cls
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$search | out-file reverseip.txt
                 cls
           } '9' {
                cls
              Invoke-Restmethod -url https://api.hackertarget.com/mtr/?q=$search | out-file headercheck.txt
                cls
           }
           '10' {
                cls
              Invoke-Restmethod –url https://api.hackertarget.com/mtr/?q=$search | out-file extractlink.txt
                cls
           }

           '11' {
                cls
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$search | out-file Tracert.txt
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$search | out-file testping.txt
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$search | out-file Dnslookup.txt
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$serch | out-file DNShostrecords.txt
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$search | out-file reversedns.txt
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$search | out-file whoislookup.txt
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$search | out-file geoip.txt
              Invoke-Restmethod -uri https://api.hackertarget.com/mtr/?q=$search | out-file reverseip.txt
              Invoke-Restmethod -url https://api.hackertarget.com/mtr/?q=$search | out-file headercheck.txt
              Invoke-Restmethod –url https://api.hackertarget.com/mtr/?q=$search | out-file extractlink.txt

                cls
           }
           'q' {
                return
           }

     }
     pause
}
until ($input -eq 'q')
