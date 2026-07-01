Repo presents bug in NSApp.activate function.

`NSApp(ignoringOtherApps:)` is deprecated, but there is no working alternative to activate the app as `NSApp.activate()` doesn't work with menu bar (background) apps.

Steps to reproduce:

1. Run the app.
2. Focus some other app like Finder or Safari.
3. Click on the app's menu bar icon and select "Open".

The app window will appear below the other app's window, instead of being brought to the front.
