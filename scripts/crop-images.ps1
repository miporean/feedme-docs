Add-Type -AssemblyName System.Drawing

$src = "C:\Users\mipos\.gemini\antigravity\brain\58d57285-e99c-4a14-a01c-93fd4829c445"
$dst = "d:\OneDrive\JL\Antigravity\FeedMe\images\troubleshooting"

function Crop-Image {
    param(
        [string]$SourceFile,
        [string]$OutputFile,
        [int]$X, [int]$Y, [int]$Width, [int]$Height
    )
    
    $sourceImg = [System.Drawing.Image]::FromFile($SourceFile)
    
    # Clamp dimensions to image bounds
    if ($X + $Width -gt $sourceImg.Width) { $Width = $sourceImg.Width - $X }
    if ($Y + $Height -gt $sourceImg.Height) { $Height = $sourceImg.Height - $Y }
    
    $rect = New-Object System.Drawing.Rectangle($X, $Y, $Width, $Height)
    $bitmap = ([System.Drawing.Bitmap]$sourceImg).Clone($rect, $sourceImg.PixelFormat)
    $bitmap.Save($OutputFile, [System.Drawing.Imaging.ImageFormat]::Png)
    
    Write-Host "Cropped: $OutputFile ($Width x $Height)"
    
    $bitmap.Dispose()
    $sourceImg.Dispose()
}

# === Connection Timed Out section ===

# Image 1: Two error notification popups from media__1771831091650.png (697x732)
# Left error popup: approximately x=60, y=195, w=260, h=225
Crop-Image -SourceFile "$src\media__1771831091650.png" `
    -OutputFile "$dst\error-timed-out.png" `
    -X 55 -Y 190 -W 270 -H 235

# Right error popup: approximately x=370, y=195, w=280, h=225
Crop-Image -SourceFile "$src\media__1771831091650.png" `
    -OutputFile "$dst\error-no-route.png" `
    -X 365 -Y 190 -W 285 -H 235

# Image 2: LAN port lights from media__1771831099502.png (705x825)
# LAN port photo: approximately x=45, y=130, w=615, h=290
Crop-Image -SourceFile "$src\media__1771831099502.png" `
    -OutputFile "$dst\step-lan-port-lights.png" `
    -X 40 -Y 125 -W 625 -H 300

# Image 3: POS table view with FeedMe Robot arrow from media__1771831099502.png
# POS table: approximately x=45, y=470, w=615, h=350
Crop-Image -SourceFile "$src\media__1771831099502.png" `
    -OutputFile "$dst\step-feedme-robot.png" `
    -X 40 -Y 465 -W 625 -H 355

# Image 4: Notification panel from media__1771831107214.png (651x868)
# Notification: approximately x=35, y=55, w=580, h=375
Crop-Image -SourceFile "$src\media__1771831107214.png" `
    -OutputFile "$dst\step-notification-panel.png" `
    -X 30 -Y 50 -W 590 -H 385

# Image 5: Order table reprint from media__1771831107214.png
# Order table: approximately x=35, y=530, w=580, h=330
Crop-Image -SourceFile "$src\media__1771831107214.png" `
    -OutputFile "$dst\step-order-table.png" `
    -X 30 -Y 525 -W 590 -H 335

# Image 6: Send button popup from media__1771831114198.png (707x560)
# Send popup: approximately x=35, y=30, w=640, h=360
Crop-Image -SourceFile "$src\media__1771831114198.png" `
    -OutputFile "$dst\step-send-button.png" `
    -X 30 -Y 25 -W 645 -H 365

# === Connection Refused section ===
# (connection-refused-error.png, step-tap-navigation.png, step-tap-settings.png, 
#  step-tap-operation.png, step-tap-printer.png already exist as good images)

# Image 7: Printer list from media__1771831164682.png (830x807)
# Printer list page: approximately x=35, y=0, w=760, h=370
Crop-Image -SourceFile "$src\media__1771831164682.png" `
    -OutputFile "$dst\step-select-printer.png" `
    -X 30 -Y 0 -W 770 -H 375

# Image 8: Search Connection from media__1771831164682.png  
# Search Connection screen: approximately x=55, y=405, w=730, h=395
Crop-Image -SourceFile "$src\media__1771831164682.png" `
    -OutputFile "$dst\step-search-connection.png" `
    -X 50 -Y 400 -W 740 -H 400

# Image 9: Printer Connection dialog (POS-80C) from media__1771831174702.png (664x757)
# Dialog: approximately x=30, y=5, w=600, h=400
Crop-Image -SourceFile "$src\media__1771831174702.png" `
    -OutputFile "$dst\step-printer-connection-dialog.png" `
    -X 25 -Y 0 -W 610 -H 405

# Image 10: Test Print button from media__1771831174702.png
# Test Print screen: approximately x=30, y=430, w=600, h=320
Crop-Image -SourceFile "$src\media__1771831174702.png" `
    -OutputFile "$dst\step-test-print.png" `
    -X 25 -Y 425 -W 610 -H 325

# Image 11: Custom IP Set button from media__1771831183800.png (652x792)
# Advance settings/Set button: approximately x=45, y=30, w=570, h=410
Crop-Image -SourceFile "$src\media__1771831183800.png" `
    -OutputFile "$dst\step-custom-ip-set.png" `
    -X 40 -Y 25 -W 580 -H 415

# Image 12: Custom IP dialog from media__1771831189288.png (766x785)
# Custom IP address dialog: approximately x=45, y=25, w=660, h=340
Crop-Image -SourceFile "$src\media__1771831189288.png" `
    -OutputFile "$dst\step-custom-ip-dialog.png" `
    -X 40 -Y 20 -W 670 -H 345

# Image 13: Search Connection after IP change from media__1771831189288.png
# Search connection screen: approximately x=55, y=405, w=650, h=370
Crop-Image -SourceFile "$src\media__1771831189288.png" `
    -OutputFile "$dst\step-search-connection-after.png" `
    -X 50 -Y 400 -W 660 -H 380

# Image 14: LAN port reconnect from media__1771831194745.png (711x759)
# LAN port photo: approximately x=35, y=120, w=610, h=310
Crop-Image -SourceFile "$src\media__1771831194745.png" `
    -OutputFile "$dst\step-reconnect-lan.png" `
    -X 30 -Y 115 -W 620 -H 315

# Image 15: Printer Connection IP tab from media__1771831194745.png
# Printer connection IP tab: approximately x=35, y=485, w=610, h=270
Crop-Image -SourceFile "$src\media__1771831194745.png" `
    -OutputFile "$dst\step-ip-tab-connect.png" `
    -X 30 -Y 480 -W 620 -H 275

# Image 16: IP tab with connect button from media__1771831199847.png (850x779)
# IP tab connect: approximately x=45, y=5, w=760, h=365
Crop-Image -SourceFile "$src\media__1771831199847.png" `
    -OutputFile "$dst\step-ip-connect-button.png" `
    -X 40 -Y 0 -W 770 -H 370

# Image 17: Final Test Print from media__1771831199847.png
# Test print: approximately x=50, y=405, w=750, h=370
Crop-Image -SourceFile "$src\media__1771831199847.png" `
    -OutputFile "$dst\step-test-print-final.png" `
    -X 45 -Y 400 -W 760 -H 375

Write-Host "`nDone! All images cropped."
Get-ChildItem $dst | Select-Object Name, Length | Format-Table -AutoSize
