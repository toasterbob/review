const { app, BrowserWindow} = require('electron')

app.on('ready', () => {
  const mainWindow = new BrowserWindow({})

  const file = 'file://' + __dirname + '/index.html'
  mainWindow.loadURL(file)
})

// console.log('hi')
// control command space - emojis
