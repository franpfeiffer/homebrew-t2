class T2 < Formula
  desc "TUI app made with go to track the time you spend on a project"
  homepage "https://github.com/franpfeiffer/t2"
  url "https://github.com/franpfeiffer/t2.git", tag:"0.2.0"
  license "MPL-2.0"
  head "https://github.com/franpfeiffer/t2.git", branch: "master"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "false"
  end
end
