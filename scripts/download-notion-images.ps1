$dst = "d:\OneDrive\JL\Antigravity\FeedMe\images\troubleshooting"

# Image mapping: filename -> Notion URL
$images = @{
    # Connection Timed Out section
    "error-timed-out.png" = "https://www.notion.so/image/attachment%3A58963d57-a74a-4d7c-95ae-b166aa4f187e%3Aimage.png?table=block&id=2eb2340d-8d86-8034-a6f3-d53757fea157&spaceId=9d7f8f1c-99a9-4500-9acd-a58307dc8cb8&width=640&userId=&cache=v2"
    "error-no-route.png" = "https://www.notion.so/image/attachment%3Ac31b58e0-e8c1-4c2a-8c3e-679f394a589a%3Ab7019228-8925-4d54-977d-c44e8a3fb274.jpg?table=block&id=2eb2340d-8d86-80f4-86db-f67b1f9c659c&spaceId=9d7f8f1c-99a9-4500-9acd-a58307dc8cb8&width=640&userId=&cache=v2"
    "step-lan-port-lights.png" = "https://www.notion.so/image/attachment%3A58963d57-a74a-4d7c-95ae-b166aa4f187e%3Aimage.png?table=block&id=2eb2340d-8d86-8034-a6f3-d53757fea157&spaceId=9d7f8f1c-99a9-4500-9acd-a58307dc8cb8&width=640&userId=&cache=v2"
    "step-feedme-robot.png" = "https://www.notion.so/image/attachment%3Aa5b60e37-9c6d-48d9-9ae2-6cab2234cc7e%3Aimage.png?table=block&id=2eb2340d-8d86-803e-9e81-f2e8bfe96e5c&spaceId=9d7f8f1c-99a9-4500-9acd-a58307dc8cb8&width=1310&userId=&cache=v2"
    "step-notification-panel.png" = "https://www.notion.so/image/attachment%3Ad4dfcde1-ee23-444c-8c83-0acd18b79e10%3Aimage.png?table=block&id=2eb2340d-8d86-806f-a5e2-ce470f84a2de&spaceId=9d7f8f1c-99a9-4500-9acd-a58307dc8cb8&width=1310&userId=&cache=v2"
    "step-order-table.png" = "https://www.notion.so/image/attachment%3Acb1c7ab4-f23c-4443-b0a1-1aa70f0ae377%3Aimage.png?table=block&id=2eb2340d-8d86-80d7-9ad0-d8a5a7e6c50c&spaceId=9d7f8f1c-99a9-4500-9acd-a58307dc8cb8&width=1310&userId=&cache=v2"
    "step-send-button.png" = "https://www.notion.so/image/attachment%3A812b58f3-abba-4eb8-ac8b-acea580d26c8%3Aimage.png?table=block&id=2eb2340d-8d86-80a5-8b53-ecf5a598d55d&spaceId=9d7f8f1c-99a9-4500-9acd-a58307dc8cb8&width=1310&userId=&cache=v2"

    # Connection Refused section
    "connection-refused-error.png" = "https://www.notion.so/image/attachment%3A0c7d2674-35d5-4af5-8c10-a549a9e591e4%3Aimage.png?table=block&id=2eb2340d-8d86-8057-b473-ca4e44804581&spaceId=9d7f8f1c-99a9-4500-9acd-a58307dc8cb8&width=1310&userId=&cache=v2"
    "step-tap-navigation.png" = "https://www.notion.so/image/attachment%3A60b1489f-294f-4954-8dc5-a06d6887f88a%3Aimage.png?table=block&id=2eb2340d-8d86-80dc-b048-cccf9099fc5d&spaceId=9d7f8f1c-99a9-4500-9acd-a58307dc8cb8&width=680&userId=&cache=v2"
    "step-tap-settings.png" = "https://www.notion.so/image/attachment%3A7fe7ea91-cad2-48c1-8dbf-793e53806300%3Aimage.png?table=block&id=2eb2340d-8d86-8040-9c63-d0e31c103810&spaceId=9d7f8f1c-99a9-4500-9acd-a58307dc8cb8&width=1310&userId=&cache=v2"
    "step-tap-operation.png" = "https://www.notion.so/image/attachment%3Ad0666c69-8cc1-4d12-ae8d-758a0e1f19ee%3Aimage.png?table=block&id=2eb2340d-8d86-8013-9958-d8f8af2c54cf&spaceId=9d7f8f1c-99a9-4500-9acd-a58307dc8cb8&width=1310&userId=&cache=v2"
    "step-tap-printer.png" = "https://www.notion.so/image/attachment%3A716d484b-3220-4bb5-a18d-31925ac96daa%3Aimage.png?table=block&id=2eb2340d-8d86-8093-8b52-e9039767358c&spaceId=9d7f8f1c-99a9-4500-9acd-a58307dc8cb8&width=1310&userId=&cache=v2"
    "step-select-printer.png" = "https://www.notion.so/image/attachment%3A19d5c78b-82c2-4d1f-ba65-e204dbb8e754%3Aimage.png?table=block&id=2eb2340d-8d86-80c3-b180-e8a31fb25e6e&spaceId=9d7f8f1c-99a9-4500-9acd-a58307dc8cb8&width=1310&userId=&cache=v2"
    "step-search-connection.png" = "https://www.notion.so/image/attachment%3A66b0d6fd-a928-45b2-a2f7-8289b42481a9%3Aimage.png?table=block&id=2eb2340d-8d86-8073-807a-dd18f375b473&spaceId=9d7f8f1c-99a9-4500-9acd-a58307dc8cb8&width=1310&userId=&cache=v2"
    "step-printer-connection-dialog.png" = "https://www.notion.so/image/attachment%3Abd168890-b7c1-4a8c-a783-211bc7f14b83%3Aimage.png?table=block&id=2eb2340d-8d86-80bd-81ea-e208a7fbe50f&spaceId=9d7f8f1c-99a9-4500-9acd-a58307dc8cb8&width=1310&userId=&cache=v2"
    "step-test-print.png" = "https://www.notion.so/image/attachment%3A6ce43eaf-e1f5-45de-9037-75cd22ff6edf%3Aimage.png?table=block&id=2eb2340d-8d86-800a-8df1-c307e380ed32&spaceId=9d7f8f1c-99a9-4500-9acd-a58307dc8cb8&width=1310&userId=&cache=v2"
    "step-custom-ip-set.png" = "https://www.notion.so/image/attachment%3A4d9e663b-1e72-4a97-8727-7fa34a94e436%3Aimage.png?table=block&id=2eb2340d-8d86-8025-a2aa-e1e7c4bf0055&spaceId=9d7f8f1c-99a9-4500-9acd-a58307dc8cb8&width=1310&userId=&cache=v2"
    "step-custom-ip-dialog.png" = "https://www.notion.so/image/attachment%3A1419fa82-afcf-41dc-b822-6c68e50b5ba0%3Aimage.png?table=block&id=2eb2340d-8d86-8056-8c1c-f1b477776331&spaceId=9d7f8f1c-99a9-4500-9acd-a58307dc8cb8&width=1310&userId=&cache=v2"
    "step-search-connection-after.png" = "https://www.notion.so/image/attachment%3Ae69deddc-0c9a-40aa-a541-fc5d97217d2f%3Aimage.png?table=block&id=2eb2340d-8d86-805a-ad7e-e12e2d0c3a84&spaceId=9d7f8f1c-99a9-4500-9acd-a58307dc8cb8&width=1310&userId=&cache=v2"
    "step-reconnect-lan.png" = "https://www.notion.so/image/attachment%3A39548079-9345-42e8-acca-66196c60410d%3Aimage.png?table=block&id=2eb2340d-8d86-8070-af21-db584589b76f&spaceId=9d7f8f1c-99a9-4500-9acd-a58307dc8cb8&width=1310&userId=&cache=v2"
    "step-ip-tab-connect.png" = "https://www.notion.so/image/attachment%3Ad8d0c30d-77ca-4b21-a45c-fc145c7e9436%3Aimage.png?table=block&id=2eb2340d-8d86-80d6-8179-d600246cfeac&spaceId=9d7f8f1c-99a9-4500-9acd-a58307dc8cb8&width=1280&userId=&cache=v2"
    "step-test-print-final.png" = "https://www.notion.so/image/attachment%3A6bc2b055-357e-46c0-a754-9daa95098e60%3Aimage.png?table=block&id=2eb2340d-8d86-80b4-8983-cb2040a26b95&spaceId=9d7f8f1c-99a9-4500-9acd-a58307dc8cb8&width=1310&userId=&cache=v2"
}

$count = 0
$total = $images.Count
foreach ($entry in $images.GetEnumerator()) {
    $count++
    $outFile = Join-Path $dst $entry.Key
    Write-Host "[$count/$total] Downloading: $($entry.Key)..."
    try {
        Invoke-WebRequest -Uri $entry.Value -OutFile $outFile -UseBasicParsing -TimeoutSec 30
        $size = (Get-Item $outFile).Length
        Write-Host "  -> OK ($size bytes)"
    } catch {
        Write-Host "  -> FAILED: $($_.Exception.Message)"
    }
}

Write-Host "`nDone! Downloaded $count images."
Get-ChildItem $dst | Select-Object Name, Length | Format-Table -AutoSize
