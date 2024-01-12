# This is a basic Windows PowerShell script to stop several native and some third party services
# in order to free up resources prior to running something resource-intensive.
# This script intentionally only stops the services and does not disable them.
# So running this causing an observable adverse reaction should be resolved by a simple reboot.

# Function to stop a service by name
function Stop-MyService {
    param (
        [string]$serviceName
    )
    $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue
    if ($service -ne $null) {
        Stop-Service -InputObject $service -Force
        Write-Host "Stopped service: $($service.DisplayName)"
    } else {
        Write-Host "Service not found: $serviceName"
    }
}

# Windows Services
$windowsServices = @(
    "BthAvctpSvc",
    "BTAGService",
    "bthserv",
    "BluetoothUserService_2a316",
    "ConsentUxUserSvc_2a316",
    "DoSvc",
    "TrkWks",
    "MapsBroker",
    "ibtsiva",
    "OneSyncSvc_2a316",
    "Spooler",
    "PcaSvc",
    "RasMan",
    "LanmanServer",
    "SSDPSRV",
    "lmhosts"
)

foreach ($service in $windowsServices) {
    Stop-MyService -serviceName $service
}

# Third Party Services

# Adobe
$adobeServices = @(
    "AGMService",
    "AGSService",
    "AdobeUpdateService"
)

foreach ($adobeService in $adobeServices) {
    Stop-MyService -serviceName $adobeService
}

# VMware
$vmwareServices = @(
    "VMAuthdService",
    "VMnetDHCP",
    "VMware NAT Service",
    "VMUSBArbService",
    "VMwareHostd"
)

foreach ($vmwareService in $vmwareServices) {
    Stop-MyService -serviceName $vmwareService
}

# Pause to keep the window open
Pause
