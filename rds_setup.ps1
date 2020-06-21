Configuration rds_setup {

    Param ()

    Import-DscResource -ModuleName PSDesiredStateConfiguration

   Node localhost
    {
  
LocalConfigurationManager
        {
            RebootNodeIfNeeded = $true
            ConfigurationMode = "ApplyOnly"
        }
      
WindowsFeature RDSRole
        {
            Name = 'RDS-RD-Server'	
            Ensure = 'Present'
        }
 
 
WindowsFeature RDSBroker
        {
            Name = 'RDS-Connection-Broker'
            Ensure = "Present"
        }

 
WindowsFeature RDSGateway
        {
            Name = 'RDS-Gateway'
            Ensure = 'Present'
        }
WindowsFeature RDSLicensing
        {
            Name = 'RDS-Licensing'
            Ensure = 'Present'
        }
      
 WindowsFeature TelnetClient
        {
            Ensure = 'Present'
            Name = 'Telnet-Client'
        }



    }
}