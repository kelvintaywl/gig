import httpclient
import os
import strutils
import uri

proc gitIgnoreContent(module: string) =
  var client = newHttpClient()
  var url = "$base/$mod.gitignore" % [ "base", "https://raw.githubusercontent.com/github/gitignore/master", "mod", encodeUrl(module)]
  var content = client.getContent(url)
  writeFile(".gitignore", content)

when isMainModule:
  if paramCount() < 1:
    # TODO: throw error
    echo "err, no module specified"
  gitIgnoreContent(paramStr(1))
