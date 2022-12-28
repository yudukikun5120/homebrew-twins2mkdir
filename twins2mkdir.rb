class Twins2mkdir < Formula
  desc "TWINS の履修科目を表す CSV ファイルから，科目ごとのディレクトリを作成するシェルスクリプト"
  homepage "https://github.com/yudukikun5120/twins2mkdir"
  url "https://github.com/yudukikun5120/twins2mkdir/archive/refs/tags/v1.0.tar.gz"
  sha256 "73d10dd13acd1a94f92a4b50f6bc5645225bfb9a2e930cfce1cd225d6d24b94d"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "twins2mkdir.sh" => "twins2mkdir"
  end
end
