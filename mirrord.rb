class Mirrord < Formula
    desc "Connect your local process and your cloud environment"
    homepage "https://mirrord.dev"
    url "https://github.com/metalbear-co/mirrord/releases/download/3.0.20-alpha/mirrord_mac_universal.zip"
    sha256 "9c61e8949ad75824a92839fd155228b874a0079dd7fb85462521866eaa726c0f"
    license "MIT"    
  
    def install
      bin.install "mirrord"
    end
  
    test do
      output = shell_output("mirrord --version")
      assert_match "mirrord #{version}\n", output
    end
  end
