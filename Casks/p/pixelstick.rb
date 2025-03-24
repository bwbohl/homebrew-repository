cask "pixelstick" do
    version "2.16.2"
    sha256 :no_check
    #sha256 "b1b19315cdd3632d503789df6da1842f5ce3fbf7b0da9e2da63503af27f8934c"

    url "https://plumamazing.com/bin/pixelstick/pixelstick.zip"
    name "PixelStick"
    desc "Mac Onscreen Measuring Tools"
    homepage "https://plumamazing.com/product/pixelstick"

    livecheck do
      url "https://plumamazing.com/product/pixelstick"
      regex(/\<strong\>Version:\<\/strong> <span>((\d)\.(\d+)\.(\d+))/i)
      strategy :page_match
    end

    #depends_on macos: ">= :snow_leopard"

    app "PixelStick.app"

    caveats do
        requires_rosetta
    end

    zap trash: [
      "/Applications/PixelStick.app",
      "/Users/bwb/Library/Application Support/PixelStick",
      "/Users/bwb/Library/Caches/com.plumamazing.PixelStick",
      "/Users/bwb/Library/HTTPStorages/com.plumamazing.PixelStick",
      "/Users/bwb/Library/Preferences/com.plumamazing.PixelStick.plist"
    ]
  end