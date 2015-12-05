module.exports =

  config:
    baseColor:
      description: 'Controls the backround shade--black, brown or white'
      type: 'string'
      default: 'black'
      enum: ['black', 'brown', 'white']
    scheme:
      description: 'controls the color scheme--green or blue'
      type: 'string'
      default: 'green'
      enum: ['green', 'blue']

  activate: ->
    atom.themes.onDidChangeActiveThemes ->
      require('./settingsManager')()
