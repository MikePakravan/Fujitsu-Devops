@{
    AllNodes = @(
        @{
            # Specify target node or scope
            NodeName = 'localhost'
            # This is not recommended, only for testing purposes. Replace with Thumbprint and CertificateFile after testing.
            PsDscAllowPlainTextPassword = $true
            # Suppress warning: It is not recommended to use domain credential ...
            PSDscAllowDomainUser = $true
        }
    )
}