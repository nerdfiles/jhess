JHESS = (($, window, document) ->
  'use strict'

  Object.prototype.__ = () ->
    console.log @

  Number.prototype.float = () ->
    parseFloat @

  Number.prototype.fixed = (limit) ->
    @toFixed(limit)

  Number.prototype.int = () ->
    parseInt @, 10

  $(document).ready () ->
    JHESS.initialize()

  __private__1 = ''

  init =
    engine: () ->
      i = j = @initialize
      for i of j
        j.hasOwnProperty(i) && j[i]()
    initialize:
      auto1: () ->
      auto2: () ->
    components:
      comp1: () ->
      comp2: () ->
  Init = init
)(Zepto?() Zepto : jQuery, @, @document)
