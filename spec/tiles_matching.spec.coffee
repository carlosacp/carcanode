root.Carcanode = {}

require('../lib/tile')

describe 'tiles matching', ->
  
  it 'should match a tile', ->

    tile = new Carcanode.Tile()
    
    match = tile.matchLeftOf tile
    
    expect(match).toBe(true)
