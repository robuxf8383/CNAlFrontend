function HexStringToBytes($hex) { 
    $bytes = New-Object Byte[] ($hex.Length / 2) 
    for ($i = 0; $i -lt $hex.Length; $i += 2) { 
        $bytes[$i / 2] = [Convert]::ToByte($hex.Substring($i, 2), 16) 
    } 
    return $bytes 
} 
function PatchFile($fileName, $patches) { 
    $content = [System.IO.File]::ReadAllBytes($fileName) 
    foreach ($patch in $patches) { 
        $original = HexStringToBytes $patch[0] 
        $patched = HexStringToBytes $patch[1] 
        for ($pos = 0; $pos -le $content.Length - $original.Length; $pos++) { 
            $found = $true 
            for ($j = 0; $j -lt $original.Length; $j++) { 
                if ($content[$pos + $j] -ne $original[$j]) { 
                    $found = $false 
                    break 
                } 
            } 
            if ($found) { 
                for ($k = 0; $k -lt $patched.Length; $k++) { 
                    $content[$pos + $k] = $patched[$k] 
                } 
                $pos += $original.Length - 1 
            } 
        } 
    } 
    [System.IO.File]::WriteAllBytes($fileName, $content) 
} 
$filesToPatch = @( 
    @{ 
        Path = "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\AppsPanel\AppsPanelBL.dll" 
        Patches = @( 
            @("0F0085C00F859D000000", "0F00FEC00F859D000000"), 
            @("0000E8A1550E0085", "0000E8A1550E00FE"), 
            @("0000E89185020085", "0000E891850200FE"), 
            @("E883FDFFFF85C00F", "E883FDFFFFFEC00F"), 
            @("CEE8F2F7FFFF85C0", "CEE8F2F7FFFFFEC0"), 
            @("FF85C00F85760200", "FFFEC00F85760200"), 
            @("0083782C000F8495", "00C6402C000F8495"), 
            @("010000837844000F", "010000C64044000F"), 
            @("848B01000083785C", "848B010000C6405C") 
        ) 
    }, 
    @{ 
        Path = "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ADS\ContainerBL.dll" 
        Patches = @( 
            @("0084C00F85890300", "0084C0E98A030000"), 
            @("008B35303C2E1085", "908B35303C2E1085") 
        ) 
    } 
) 
foreach ($file in $filesToPatch) { 
    $defaultPath = $file.Path 
    if (!(Test-Path $defaultPath)) { 
        Write-Host "File $defaultPath does not exist. Skipping..." 
        continue 
    } 
    PatchFile $defaultPath $file.Patches 
} 
function HexStringToBytes($hex) { 
    $bytes = New-Object Byte[] ($hex.Length / 2) 
    for ($i = 0; $i -lt $hex.Length; $i += 2) { 
        $bytes[$i / 2] = [Convert]::ToByte($hex.Substring($i, 2), 16) 
    } 
    return $bytes 
} 
function PatchFile($fileName, $patches) { 
    $content = [System.IO.File]::ReadAllBytes($fileName) 
    foreach ($patch in $patches) { 
        $original = HexStringToBytes $patch[0] 
        $patched = HexStringToBytes $patch[1] 
        for ($pos = 0; $pos -le $content.Length - $original.Length; $pos++) { 
            $found = $true 
            for ($j = 0; $j -lt $original.Length; $j++) { 
                if ($content[$pos + $j] -ne $original[$j]) { 
                    $found = $false 
                    break 
                } 
            } 
            if ($found) { 
                for ($k = 0; $k -lt $patched.Length; $k++) { 
                    $content[$pos + $k] = $patched[$k] 
                } 
                $pos += $original.Length - 1 
            } 
        } 
    } 
    [System.IO.File]::WriteAllBytes($fileName, $content) 
} 
$filesToPatch = @( 
    @{ 
        Path = "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\AppsPanel\AppsPanelBL.dll" 
        Patches = @( 
            @("0F0085C00F859D000000", "0F00FEC00F859D000000"), 
            @("0000E8A1550E0085", "0000E8A1550E00FE"), 
            @("0000E89185020085", "0000E891850200FE"), 
            @("E883FDFFFF85C00F", "E883FDFFFFFEC00F"), 
            @("CEE8F2F7FFFF85C0", "CEE8F2F7FFFFFEC0"), 
            @("FF85C00F85760200", "FFFEC00F85760200"), 
            @("0083782C000F8495", "00C6402C000F8495"), 
            @("010000837844000F", "010000C64044000F"), 
            @("848B01000083785C", "848B010000C6405C") 
        ) 
    }, 
    @{ 
        Path = "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ADS\ContainerBL.dll" 
        Patches = @( 
            @("0084C00F85890300", "0084C0E98A030000"), 
            @("008B35303C2E1085", "908B35303C2E1085") 
        ) 
    } 
) 
foreach ($file in $filesToPatch) { 
    $defaultPath = $file.Path 
    if (!(Test-Path $defaultPath)) { 
        Write-Host "File $defaultPath does not exist. Skipping..." 
        continue 
    } 
    PatchFile $defaultPath $file.Patches 
} 
function HexStringToBytes($hex) { 
    $bytes = New-Object Byte[] ($hex.Length / 2) 
    for ($i = 0; $i -lt $hex.Length; $i += 2) { 
        $bytes[$i / 2] = [Convert]::ToByte($hex.Substring($i, 2), 16) 
    } 
    return $bytes 
} 
function PatchFile($fileName, $patches) { 
    $content = [System.IO.File]::ReadAllBytes($fileName) 
    foreach ($patch in $patches) { 
        $original = HexStringToBytes $patch[0] 
        $patched = HexStringToBytes $patch[1] 
        for ($pos = 0; $pos -le $content.Length - $original.Length; $pos++) { 
            $found = $true 
            for ($j = 0; $j -lt $original.Length; $j++) { 
                if ($content[$pos + $j] -ne $original[$j]) { 
                    $found = $false 
                    break 
                } 
            } 
            if ($found) { 
                for ($k = 0; $k -lt $patched.Length; $k++) { 
                    $content[$pos + $k] = $patched[$k] 
                } 
                $pos += $original.Length - 1 
            } 
        } 
    } 
    [System.IO.File]::WriteAllBytes($fileName, $content) 
} 
$filesToPatch = @( 
    @{ 
        Path = "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\AppsPanel\AppsPanelBL.dll" 
        Patches = @( 
            @("0F0085C00F859D000000", "0F00FEC00F859D000000"), 
            @("0000E8A1550E0085", "0000E8A1550E00FE"), 
            @("0000E89185020085", "0000E891850200FE"), 
            @("E883FDFFFF85C00F", "E883FDFFFFFEC00F"), 
            @("CEE8F2F7FFFF85C0", "CEE8F2F7FFFFFEC0"), 
            @("FF85C00F85760200", "FFFEC00F85760200"), 
            @("0083782C000F8495", "00C6402C000F8495"), 
            @("010000837844000F", "010000C64044000F"), 
            @("848B01000083785C", "848B010000C6405C") 
        ) 
    }, 
    @{ 
        Path = "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ADS\ContainerBL.dll" 
        Patches = @( 
            @("0084C00F85890300", "0084C0E98A030000"), 
            @("008B35303C2E1085", "908B35303C2E1085") 
        ) 
    } 
) 
foreach ($file in $filesToPatch) { 
    $defaultPath = $file.Path 
    if (!(Test-Path $defaultPath)) { 
        Write-Host "File $defaultPath does not exist. Skipping..." 
        continue 
    } 
    PatchFile $defaultPath $file.Patches 
} 
function HexStringToBytes($hex) { 
    $bytes = New-Object Byte[] ($hex.Length / 2) 
    for ($i = 0; $i -lt $hex.Length; $i += 2) { 
        $bytes[$i / 2] = [Convert]::ToByte($hex.Substring($i, 2), 16) 
    } 
    return $bytes 
} 
function PatchFile($fileName, $patches) { 
    $content = [System.IO.File]::ReadAllBytes($fileName) 
    foreach ($patch in $patches) { 
        $original = HexStringToBytes $patch[0] 
        $patched = HexStringToBytes $patch[1] 
        for ($pos = 0; $pos -le $content.Length - $original.Length; $pos++) { 
            $found = $true 
            for ($j = 0; $j -lt $original.Length; $j++) { 
                if ($content[$pos + $j] -ne $original[$j]) { 
                    $found = $false 
                    break 
                } 
            } 
            if ($found) { 
                for ($k = 0; $k -lt $patched.Length; $k++) { 
                    $content[$pos + $k] = $patched[$k] 
                } 
                $pos += $original.Length - 1 
            } 
        } 
    } 
    [System.IO.File]::WriteAllBytes($fileName, $content) 
} 
$filesToPatch = @( 
    @{ 
        Path = "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\AppsPanel\AppsPanelBL.dll" 
        Patches = @( 
            @("0F0085C00F859D000000", "0F00FEC00F859D000000"), 
            @("0000E8A1550E0085", "0000E8A1550E00FE"), 
            @("0000E89185020085", "0000E891850200FE"), 
            @("E883FDFFFF85C00F", "E883FDFFFFFEC00F"), 
            @("CEE8F2F7FFFF85C0", "CEE8F2F7FFFFFEC0"), 
            @("FF85C00F85760200", "FFFEC00F85760200"), 
            @("0083782C000F8495", "00C6402C000F8495"), 
            @("010000837844000F", "010000C64044000F"), 
            @("848B01000083785C", "848B010000C6405C") 
        ) 
    }, 
    @{ 
        Path = "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ADS\ContainerBL.dll" 
        Patches = @( 
            @("0084C00F85890300", "0084C0E98A030000"), 
            @("008B35303C2E1085", "908B35303C2E1085") 
        ) 
    } 
) 
foreach ($file in $filesToPatch) { 
    $defaultPath = $file.Path 
    if (!(Test-Path $defaultPath)) { 
        Write-Host "File $defaultPath does not exist. Skipping..." 
        continue 
    } 
    PatchFile $defaultPath $file.Patches 
} 
function HexStringToBytes($hex) { 
    $bytes = New-Object Byte[] ($hex.Length / 2) 
    for ($i = 0; $i -lt $hex.Length; $i += 2) { 
        $bytes[$i / 2] = [Convert]::ToByte($hex.Substring($i, 2), 16) 
    } 
    return $bytes 
} 
function PatchFile($fileName, $patches) { 
    $content = [System.IO.File]::ReadAllBytes($fileName) 
    foreach ($patch in $patches) { 
        $original = HexStringToBytes $patch[0] 
        $patched = HexStringToBytes $patch[1] 
        for ($pos = 0; $pos -le $content.Length - $original.Length; $pos++) { 
            $found = $true 
            for ($j = 0; $j -lt $original.Length; $j++) { 
                if ($content[$pos + $j] -ne $original[$j]) { 
                    $found = $false 
                    break 
                } 
            } 
            if ($found) { 
                for ($k = 0; $k -lt $patched.Length; $k++) { 
                    $content[$pos + $k] = $patched[$k] 
                } 
                $pos += $original.Length - 1 
            } 
        } 
    } 
    [System.IO.File]::WriteAllBytes($fileName, $content) 
} 
$filesToPatch = @( 
    @{ 
        Path = "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\AppsPanel\AppsPanelBL.dll" 
        Patches = @( 
            @("0F0085C00F859D000000", "0F00FEC00F859D000000"), 
            @("0000E8A1550E0085", "0000E8A1550E00FE"), 
            @("0000E89185020085", "0000E891850200FE"), 
            @("E883FDFFFF85C00F", "E883FDFFFFFEC00F"), 
            @("CEE8F2F7FFFF85C0", "CEE8F2F7FFFFFEC0"), 
            @("FF85C00F85760200", "FFFEC00F85760200"), 
            @("0083782C000F8495", "00C6402C000F8495"), 
            @("010000837844000F", "010000C64044000F"), 
            @("848B01000083785C", "848B010000C6405C") 
        ) 
    }, 
    @{ 
        Path = "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ADS\ContainerBL.dll" 
        Patches = @( 
            @("0084C00F85890300", "0084C0E98A030000"), 
            @("008B35303C2E1085", "908B35303C2E1085") 
        ) 
    } 
) 
foreach ($file in $filesToPatch) { 
    $defaultPath = $file.Path 
    if (!(Test-Path $defaultPath)) { 
        Write-Host "File $defaultPath does not exist. Skipping..." 
        continue 
    } 
    PatchFile $defaultPath $file.Patches 
} 
function HexStringToBytes($hex) { 
    $bytes = New-Object Byte[] ($hex.Length / 2) 
    for ($i = 0; $i -lt $hex.Length; $i += 2) { 
        $bytes[$i / 2] = [Convert]::ToByte($hex.Substring($i, 2), 16) 
    } 
    return $bytes 
} 
function PatchFile($fileName, $patches) { 
    $content = [System.IO.File]::ReadAllBytes($fileName) 
    foreach ($patch in $patches) { 
        $original = HexStringToBytes $patch[0] 
        $patched = HexStringToBytes $patch[1] 
        for ($pos = 0; $pos -le $content.Length - $original.Length; $pos++) { 
            $found = $true 
            for ($j = 0; $j -lt $original.Length; $j++) { 
                if ($content[$pos + $j] -ne $original[$j]) { 
                    $found = $false 
                    break 
                } 
            } 
            if ($found) { 
                for ($k = 0; $k -lt $patched.Length; $k++) { 
                    $content[$pos + $k] = $patched[$k] 
                } 
                $pos += $original.Length - 1 
            } 
        } 
    } 
    [System.IO.File]::WriteAllBytes($fileName, $content) 
} 
$filesToPatch = @( 
    @{ 
        Path = "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\AppsPanel\AppsPanelBL.dll" 
        Patches = @( 
            @("0F0085C00F859D000000", "0F00FEC00F859D000000"), 
            @("0000E8A1550E0085", "0000E8A1550E00FE"), 
            @("0000E89185020085", "0000E891850200FE"), 
            @("E883FDFFFF85C00F", "E883FDFFFFFEC00F"), 
            @("CEE8F2F7FFFF85C0", "CEE8F2F7FFFFFEC0"), 
            @("FF85C00F85760200", "FFFEC00F85760200"), 
            @("0083782C000F8495", "00C6402C000F8495"), 
            @("010000837844000F", "010000C64044000F"), 
            @("848B01000083785C", "848B010000C6405C") 
        ) 
    }, 
    @{ 
        Path = "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ADS\ContainerBL.dll" 
        Patches = @( 
            @("0084C00F85890300", "0084C0E98A030000"), 
            @("008B35303C2E1085", "908B35303C2E1085") 
        ) 
    } 
) 
foreach ($file in $filesToPatch) { 
    $defaultPath = $file.Path 
    if (!(Test-Path $defaultPath)) { 
        Write-Host "File $defaultPath does not exist. Skipping..." 
        continue 
    } 
    PatchFile $defaultPath $file.Patches 
} 
function HexStringToBytes($hex) { 
    $bytes = New-Object Byte[] ($hex.Length / 2) 
    for ($i = 0; $i -lt $hex.Length; $i += 2) { 
        $bytes[$i / 2] = [Convert]::ToByte($hex.Substring($i, 2), 16) 
    } 
    return $bytes 
} 
function PatchFile($fileName, $patches) { 
    $content = [System.IO.File]::ReadAllBytes($fileName) 
    foreach ($patch in $patches) { 
        $original = HexStringToBytes $patch[0] 
        $patched = HexStringToBytes $patch[1] 
        for ($pos = 0; $pos -le $content.Length - $original.Length; $pos++) { 
            $found = $true 
            for ($j = 0; $j -lt $original.Length; $j++) { 
                if ($content[$pos + $j] -ne $original[$j]) { 
                    $found = $false 
                    break 
                } 
            } 
            if ($found) { 
                for ($k = 0; $k -lt $patched.Length; $k++) { 
                    $content[$pos + $k] = $patched[$k] 
                } 
                $pos += $original.Length - 1 
            } 
        } 
    } 
    [System.IO.File]::WriteAllBytes($fileName, $content) 
} 
$filesToPatch = @( 
    @{ 
        Path = "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\AppsPanel\AppsPanelBL.dll" 
        Patches = @( 
            @("0F0085C00F859D000000", "0F00FEC00F859D000000"), 
            @("0000E8A1550E0085", "0000E8A1550E00FE"), 
            @("0000E89185020085", "0000E891850200FE"), 
            @("E883FDFFFF85C00F", "E883FDFFFFFEC00F"), 
            @("CEE8F2F7FFFF85C0", "CEE8F2F7FFFFFEC0"), 
            @("FF85C00F85760200", "FFFEC00F85760200"), 
            @("0083782C000F8495", "00C6402C000F8495"), 
            @("010000837844000F", "010000C64044000F"), 
            @("848B01000083785C", "848B010000C6405C") 
        ) 
    }, 
    @{ 
        Path = "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ADS\ContainerBL.dll" 
        Patches = @( 
            @("0084C00F85890300", "0084C0E98A030000"), 
            @("008B35303C2E1085", "908B35303C2E1085") 
        ) 
    } 
) 
foreach ($file in $filesToPatch) { 
    $defaultPath = $file.Path 
    if (!(Test-Path $defaultPath)) { 
        Write-Host "File $defaultPath does not exist. Skipping..." 
        continue 
    } 
    PatchFile $defaultPath $file.Patches 
} 
function HexStringToBytes($hex) { 
    $bytes = New-Object Byte[] ($hex.Length / 2) 
    for ($i = 0; $i -lt $hex.Length; $i += 2) { 
        $bytes[$i / 2] = [Convert]::ToByte($hex.Substring($i, 2), 16) 
    } 
    return $bytes 
} 
function PatchFile($fileName, $patches) { 
    $content = [System.IO.File]::ReadAllBytes($fileName) 
    foreach ($patch in $patches) { 
        $original = HexStringToBytes $patch[0] 
        $patched = HexStringToBytes $patch[1] 
        for ($pos = 0; $pos -le $content.Length - $original.Length; $pos++) { 
            $found = $true 
            for ($j = 0; $j -lt $original.Length; $j++) { 
                if ($content[$pos + $j] -ne $original[$j]) { 
                    $found = $false 
                    break 
                } 
            } 
            if ($found) { 
                for ($k = 0; $k -lt $patched.Length; $k++) { 
                    $content[$pos + $k] = $patched[$k] 
                } 
                $pos += $original.Length - 1 
            } 
        } 
    } 
    [System.IO.File]::WriteAllBytes($fileName, $content) 
} 
$filesToPatch = @( 
    @{ 
        Path = "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\AppsPanel\AppsPanelBL.dll" 
        Patches = @( 
            @("0F0085C00F859D000000", "0F00FEC00F859D000000"), 
            @("0000E8A1550E0085", "0000E8A1550E00FE"), 
            @("0000E89185020085", "0000E891850200FE"), 
            @("E883FDFFFF85C00F", "E883FDFFFFFEC00F"), 
            @("CEE8F2F7FFFF85C0", "CEE8F2F7FFFFFEC0"), 
            @("FF85C00F85760200", "FFFEC00F85760200"), 
            @("0083782C000F8495", "00C6402C000F8495"), 
            @("010000837844000F", "010000C64044000F"), 
            @("848B01000083785C", "848B010000C6405C") 
        ) 
    }, 
    @{ 
        Path = "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ADS\ContainerBL.dll" 
        Patches = @( 
            @("0084C00F85890300", "0084C0E98A030000"), 
            @("008B35303C2E1085", "908B35303C2E1085") 
        ) 
    } 
) 
foreach ($file in $filesToPatch) { 
    $defaultPath = $file.Path 
    if (!(Test-Path $defaultPath)) { 
        Write-Host "File $defaultPath does not exist. Skipping..." 
        continue 
    } 
    PatchFile $defaultPath $file.Patches 
} 
function HexStringToBytes($hex) { 
    $bytes = New-Object Byte[] ($hex.Length / 2) 
    for ($i = 0; $i -lt $hex.Length; $i += 2) { 
        $bytes[$i / 2] = [Convert]::ToByte($hex.Substring($i, 2), 16) 
    } 
    return $bytes 
} 
function PatchFile($fileName, $patches) { 
    $content = [System.IO.File]::ReadAllBytes($fileName) 
    foreach ($patch in $patches) { 
        $original = HexStringToBytes $patch[0] 
        $patched = HexStringToBytes $patch[1] 
        for ($pos = 0; $pos -le $content.Length - $original.Length; $pos++) { 
            $found = $true 
            for ($j = 0; $j -lt $original.Length; $j++) { 
                if ($content[$pos + $j] -ne $original[$j]) { 
                    $found = $false 
                    break 
                } 
            } 
            if ($found) { 
                for ($k = 0; $k -lt $patched.Length; $k++) { 
                    $content[$pos + $k] = $patched[$k] 
                } 
                $pos += $original.Length - 1 
            } 
        } 
    } 
    [System.IO.File]::WriteAllBytes($fileName, $content) 
} 
$filesToPatch = @( 
    @{ 
        Path = "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\AppsPanel\AppsPanelBL.dll" 
        Patches = @( 
            @("0F0085C00F859D000000", "0F00FEC00F859D000000"), 
            @("0000E8A1550E0085", "0000E8A1550E00FE"), 
            @("0000E89185020085", "0000E891850200FE"), 
            @("E883FDFFFF85C00F", "E883FDFFFFFEC00F"), 
            @("CEE8F2F7FFFF85C0", "CEE8F2F7FFFFFEC0"), 
            @("FF85C00F85760200", "FFFEC00F85760200"), 
            @("0083782C000F8495", "00C6402C000F8495"), 
            @("010000837844000F", "010000C64044000F"), 
            @("848B01000083785C", "848B010000C6405C") 
        ) 
    }, 
    @{ 
        Path = "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ADS\ContainerBL.dll" 
        Patches = @( 
            @("0084C00F85890300", "0084C0E98A030000"), 
            @("008B35303C2E1085", "908B35303C2E1085") 
        ) 
    } 
) 
foreach ($file in $filesToPatch) { 
    $defaultPath = $file.Path 
    if (!(Test-Path $defaultPath)) { 
        Write-Host "File $defaultPath does not exist. Skipping..." 
        continue 
    } 
    PatchFile $defaultPath $file.Patches 
} 
