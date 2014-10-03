css = require '../../lib/renderer/css'

describe 'css', ->
  describe 'render', ->
    it 'should return the body', (done) ->
      file = fixturePath('css/style.css')
      css.render file: file, (error, data) ->
        (error == null).should.be.true
        assertFileHasBody(file, data.body, done)
        

