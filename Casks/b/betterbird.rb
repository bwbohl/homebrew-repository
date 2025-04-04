cask "betterbird" do
    # updated based on https://github.com/rbreslow/homebrew-cask/blob/master/Casks/b/betterbird.rbcask

    arch arm: "-arm64", intel: ""

    version "128.9.0esr-bb24"
    sha256 "f5cf72ae15e99b47f3c35a9764feea651da7f3d95024cbd7b69a94e0c21e876b"

    url "https://www.betterbird.eu/downloads/MacDiskImage/betterbird-#{version}.en-US.mac#{arch}.dmg"
    name "Betterbird"
    desc "Fine-tuned version of Mozilla Thunderbird"
    homepage "https://www.betterbird.eu/"

    livecheck do
      url "https://www.betterbird.eu/downloads/get.php?os=mac&lang=en-US&version=release"
      regex(/betterbird-(\d+(?:\.\d+)*-bb\d+)\.en-US\.mac\.dmg/i)
      strategy :header_match
    end

    # From Thunderbird system requirements.
    depends_on macos: ">= :sierra"

    app "Betterbird.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.betterbird.sfl*",
      "~/Library/Caches/Thunderbird",
      "~/Library/Preferences/org.mozilla.betterbird.plist",
      "~/Library/Saved Application State/org.mozilla.betterbird.savedState",
      "~/Library/Thunderbird",
    ]

    caveats <<~EOS
      Language Packs available at https://www.betterbird.eu/downloads/index.php.

      Mac builds are not notarised. Follow the instructions at https://support.apple.com/en-gb/guide/mac-help/mh40616/mac to run them.
      Altenatively, run spctl --add /Applications/Betterbird.app in a terminal (https://osxdaily.com/2015/07/15/add-remove-gatekeeper-app-command-line-mac-os-x/).
  (*): ARM64 build for silicon Macs: If you receive an error "Betterbird" is damaged and can't be opened, run xattr -cr /Applications/Betterbird.app (https://www.youtube.com/watch?v=6fqzb4qpgcs).
    EOS
  end