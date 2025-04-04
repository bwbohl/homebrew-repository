# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "keykeeper" do
  version "2.7.0"
  sha256 "100974f578ed1c2574237978632d5372fb193ebdea392ad2082f62764d4795fd"

  url "https://bundlehunt-files.s3.us-west-2.amazonaws.com/2024-downloads/KeyKeeper-#{version}.zip"
  name "KeyKeeper"
  desc "KeyKeeper is the sleek, secure, and user-friendly Software License Key management app."
  homepage "https://bundlehunt.com/single-deal/keykeeper"

  # TODO version not available on page
  # Documentation: https://docs.brew.sh/Brew-Livecheck
  #livecheck do
  #  url :homepage
  #  regex(/href=.*KeyKeeper-((\d)\.(\d+)\.(\d+))/i)
  #  strategy :page_content
  #end

  depends_on macos: ">= :ventura"

  app "KeyKeeper-#{version}.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: ""
end
