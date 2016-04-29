function _AddHeaders {
    [cmdletbinding()]
    param(
        
        [parameter(mandatory)]
        $Accept = 'application/json',
        
        [parameter(mandatory)]
        $ContentType = 'application/json',
        
        [parameter(mandatory)]
        [string]$Host,
        
        [parameter(mandatory)]
        [string]$Version = '12.0.2',
        
        [parameter(mandatory, ValueFromPipelineByPropertyName)]
        [string]$UserId
    )
    
    $headers = @{
        Accept = ''
        Content-Type = ''
        Host = ''
        X-Chef-Version = ''
        X-Ops-Authorization-N = ''
        X-Ops-Content-Hash = ''
        X-Ops-Server-Api-Version = ''
        X-Ops-Sign = 'version=1.0'
        X-Ops-Timestamp = Get-Date -Date ([DateTime]::UTCNow) -uformat "+%Y-%m-%dT%H:%M:%SZ"
        X-Ops-UserId
    }
    
}