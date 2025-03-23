def main [] {
    let deviceName = $env.HA_DEVICE_NAME
    let arcExt = findExt "/Users/asouharuhito/Library/Application Support/Arc/User Data/Default/Extensions"
    let vivExt = findExt "/Users/asouharuhito/Library/Application Support/Vivaldi/Default/Extensions/"
    {arc: $arcExt, vivaldi: $vivExt }
    | to json
    | save $"extensions_($deviceName).json"
}

def findExt [dir: string] {
    ls $dir
    | $in.name
    | path split
    | each {
        $in
        | last
        | $"https://chrome.google.com/webstore/detail/($in)"
    }
}