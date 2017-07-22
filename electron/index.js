const { app, BrowserWindow} = require('electron')

app.on('ready', () => {
  const mainWindow = new BrowserWindow({})

  const file = 'file://' + __dirname + '/index.html'

  mainWindow.loadURL(file)

  mainWindow.webContents.on('will-navigate', (e, url) => {
    e.preventDefault()
    console.log(url)
    
    mainWindow.webContents.send('open-file', url.slice(7))
  })
})

// console.log('hi')
// control command space - emojis
