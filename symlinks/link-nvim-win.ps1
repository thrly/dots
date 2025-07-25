$source = "$HOME\dots\nvim"
$target = "$HOME\AppData\Local\nvim"

# Remove existing config directory (if present)
if (Test-Path -Path $target) {
    Write-Host "Removing existing Neovim config at $target..."
    Remove-Item -Path $target -Recurse -Force
}

# Try to create a symlink using mklink
Write-Host "Creating symbolic link from $target to $source..."
$mklinkResult = cmd /c mklink /D "$target" "$source"

if ($LASTEXITCODE -eq 0) {
    Write-Host "Symlink created successfully!"
} else {
    Write-Host "Failed to create symbolic link."
    Write-Host $mklinkResult
}
