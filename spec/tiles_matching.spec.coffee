root.Game = {}

require('../lib/tile')

describe 'tiles matching', ->
  
  it 'should match a tile', ->

    tile = new Game.Tile()    
    
    match = tile.matchLeftOf tile
    
    expect(match).toBe(true)
