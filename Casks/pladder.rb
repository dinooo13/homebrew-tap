cask "pladder" do
  version "0.2.2"
  sha256 "47279cf8dd75004e849509a7636b2b6c56bed6dacd227afa4e8ed09736b89e79"

  url "https://github.com/dinooo13/pladder/releases/download/v#{version}/Pladder.dmg"
  name "Pladder"
  desc "Push-to-talk dictation with on-device speech recognition"
  homepage "https://dinooo13.github.io/pladder/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Pladder.app"

  uninstall quit: "de.dinooo13.pladder"

  zap trash: [
        "~/Library/Application Support/FluidAudio/Models/parakeet-tdt-0.6b-v3",
        "~/Library/Application Support/FluidAudio/Models/parakeet-ultra",
        "~/Library/Application Support/Pladder",
        "~/Library/Caches/de.dinooo13.pladder",
        "~/Library/HTTPStorages/de.dinooo13.pladder",
        "~/Library/Preferences/de.dinooo13.pladder.plist",
      ],
      rmdir: "~/Library/Application Support/FluidAudio"
end
