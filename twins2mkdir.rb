class Twins2mkdir < Formula
  desc "TWINS の履修科目を表す CSV ファイルから，科目ごとのディレクトリを作成するシェルスクリプト"
  homepage "https://github.com/yudukikun5120/twins2mkdir"
  url "https://github.com/yudukikun5120/twins2mkdir.git", branch: "main"
  version "1.0.2"
  sha256 "3d1e90fe80fcd0f39d61d4386750bcdda39c522b81757e85ef89aa212937dfe1"
  license "MIT"

  depends_on "jq"

  def install
    inreplace "bin/twins2mkdir.sh",
    "KDB_JSON=\"$(dirname \"$0\")/../lib/kdb-parse/kdb.json\"",
    "KDB_JSON=\"#{lib}/kdb.json\""

    bin.install "bin/twins2mkdir.sh" => "twins2mkdir"
    lib.install "lib/color.sh" 
    lib.install "lib/kdb-parse/kdb.json"
  end
end
