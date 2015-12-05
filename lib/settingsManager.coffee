fs = require 'fs'
path = require 'path'

filepath = path.join __dirname, '..', '/styles/colors.less'

setColors = (colorObj) ->
  fs.readFile filepath, (err, contents) ->
    throw err if err
    contentString = contents.toString()
    for key, value of colorObj
      regexp = new RegExp(key + ": [^;]+;")
      contentString = contentString.replace regexp, "#{key}: #{value};"
    fs.writeFile filepath, contentString, ->
      theme.reloadStylesheets() for theme in atom.themes.getActiveThemes()

module.exports = ->
  atom.config.onDidChange 'dead-simple-light-syntax.baseColor', ->
    value = atom.config.get('dead-simple-light-syntax.baseColor')
    colors = {}
    switch value
      when 'black'
        colors =
          '@background': '@light-gray'
          '@invisibles': 'white'
      when 'brown'
        colors =
          '@background': '@chalk'
          '@invisibles': 'white'
      when 'white'
        colors =
          '@background': 'white'
          '@invisibles': 'darken(@background, 5%)'
    setColors(colors)

  atom.config.onDidChange 'dead-simple-light-syntax.scheme', ->
    value = atom.config.get('dead-simple-light-syntax.scheme')
    scheme = {}
    switch value
      when 'green'
        scheme =
          '@keyword': '@green'
          '@special': '@fuscia'
          '@selected': '@sea-glass'
      when 'blue'
        scheme =
          '@keyword': '@blue'
          '@special': '@sherbet'
          '@selected': '@pale-blue'
    setColors(scheme)
