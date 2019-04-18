# Simple browser using SFSafariViewController, Swift 5, Xcode 10 (Programatically)

Programatically SFSafariViewController: Only HTTP and HTTPS URLs are supported. But URL without http or https with be opened

import SafariServices

create a UITextField for url
create a UIButton to instantiate SFSafariViewController with the provided url

check the url whether it contains https or http

if it does not contains, https or http will be prefixed to the url

