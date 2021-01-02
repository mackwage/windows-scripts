:: This is a basic Windows batch script to stop several native and some third party services in order to free up resources prior to running something resource-intensive. (e.g., playing a game, performing benchmarking, rendering). 
:: This script intentionally only stops the services and does not disable them. So running this causing an observable aderse reaction should be resolved by a simple reboot.
:: Found this great reference: http://batcmd.com/windows/10/services/
:: Please note  this disables several of the Bluetooth related services as I do not use any Bluetooth devices on my Windows PC. However they can be commented out or removed prior to running. 
:: As always - open to feedback and suggestions! 
::
net stop AGMService /y
:: Adobe Genuine Monitor Service as part of Adobe Cloud software
net stop AGSService /y
:: Adobe Genuine Software Integrity Service as part of Adobe Cloud software
net stop AdobeUpdateService /y
:: AdobeUpdateService as part of Adobe Cloud software
net stop BthAvctpSvc /y
:: AVCTP - This is Audio Video Control Transport Protocol service.
:: http://batcmd.com/windows/10/services/bthavctpsvc/
net stop BTAGService /y
:: Bluetooth Audio Gateway Service
:: Service supporting the audio gateway role of the Bluetooth Handsfree Profile.
net stop bthserv /y
:: Bluetooth Support Service
:: The Bluetooth service supports discovery and association of remote Bluetooth devices.  Stopping or disabling this service may cause already installed Bluetooth devices to fail to operate properly and prevent new devices from being discovered or associated.
net stop BluetoothUserService_2a316 /y
:: The Bluetooth user service supports proper functionality of Bluetooth features relevant to each user session.
net stop ConsentUxUserSvc_2a316 /y
:: Allows ConnectUX and PC Settings to Connect and Pair with WiFi displays and Bluetooth devices.
net stop DoSvc /y
:: Delivery Optimization - Performs content delivery optimization tasks
net stop TrkWks /y
:: Distributed Link Tracking Client
:: Maintains links between NTFS files within a computer or across computers in a network.
net stop MapsBroker /y
:: Downloaded Maps Manager
:: Windows service for application access to downloaded maps. This service is started on-demand by application accessing downloaded maps. Disabling this service will prevent apps from accessing maps.
net stop ibtsiva /y
:: Intel Bluetooth Service
:: Intel(R) Wireless Bluetooth(R) iBtSiva Service
net stop OneSyncSvc_2a316 /y
:: This service synchronizes mail, contacts, calendar and various other user data. Mail and other applications dependent on this functionality will not work properly when this service is not running.
net stop Spooler /y
:: Print Spooler
:: This service spools print jobs and handles interaction with the printer.  If you turn off this service, you won’t be able to print or see your printers.
net stop PcaSvc /y
:: Program Compatibility Assistant Service
:: This service provides support for the Program Compatibility Assistant (PCA).  PCA monitors programs installed and run by the user and detects known compatibility problems. If this service is stopped, PCA will not function properly.
net stop RasMan /y
:: Remote Access Connection Manager
:: Manages dial-up and virtual private network (VPN) connections from this computer to the Internet or other remote networks. If this service is disabled, any services that explicitly depend on it will fail to start.
net stop LanmanServer /y
:: Server
:: Supports file, print, and named-pipe sharing over the network for this computer. If this service is stopped, these functions will be unavailable. If this service is disabled, any services that explicitly depend on it will fail to start.
net stop SSDPSRV /y
:: SSDP Discovery
:: Discovers networked devices and services that use the SSDP discovery protocol, such as UPnP devices. Also announces SSDP devices and services running on the local computer. If this service is stopped, SSDP-based devices will not be discovered. If this service is disabled, any services that explicitly depend on it will fail to start.
net stop lmhosts /y
:: TCP/IP NetBIOS Helper
:: Provides support for the NetBIOS over TCP/IP (NetBT) service and NetBIOS name resolution for clients on the network, therefore enabling users to share files, print, and log on to the network. If this service is stopped, these functions might be unavailable. If this service is disabled, any services that explicitly depend on it will fail to start.
pause
