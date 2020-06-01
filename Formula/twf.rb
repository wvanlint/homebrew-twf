class Twf < Formula
  desc "Standalone tree view file explorer, inspired by fzf"
  homepage "https://github.com/wvanlint/twf"
  head "https://github.com/wvanlint/twf.git"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"twf", "github.com/wvanlint/twf/cmd/twf"
  end

  def caveats
    <<~EOS
      See https://github.com/wvanlint/twf for application-specific integrations,
      such as with vim and zsh.
    EOS
  end
end
