const { app, BrowserWindow} = require('electron')

app.on('ready', () => {
  const mainWindow = new BrowserWindow({})
  mainWindow.loadURL("http://google.com")
})

// console.log('hi')
