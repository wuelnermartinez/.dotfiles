# -----------------------------------------------------------------------------
# Name:     POWERSHELL PROFILE.
# Author:   Wuelner Martínez <wuelner.martinez@outlook.com>
# URL:      https://github.com/wuelnerdotexe/dotfiles
# License:  MIT (C) Wuelner Martínez.
# About:    Powershell script for config powershell profile in Windows.
# -----------------------------------------------------------------------------

# Customize powershell predictions.
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None

# Enable powershell predictions.
Set-PSReadLineOption -PredictionSource History

# Enable terminal icons.
Import-Module -Name Terminal-Icons

# Set path to winfetch config.
$Env:WINFETCH_CONFIG_PATH = "$Env:USERPROFILE\dotfiles\configs\winfetch\config.ps1"

# Set path to starship config.
$Env:STARSHIP_CONFIG = "$Env:USERPROFILE\dotfiles\configs\starship\config.toml"

# Init starship prompt.
Invoke-Expression (&starship init powershell)
