class ConsolesController < ApplicationController
  
  @@consoles = [
    {name: 'ps5', manufacturer: 'sony'},
    {name: 'ps2', manufacturer: 'sony'},
    {name: 'switch', manufacturer: 'nintendo'},
    {name: 'xbox', manufacturer: 'microsoft'}
  ]

  def consoles
    consoles = ['sankalp','ps3','ps5']
    render( json: {"consoles": consoles} )
  end

  def consoles_with_manufacturer
    render( json: { 'consoles' => @@consoles.map{ |console| console[:name] } } )
  end

  def consoles_with_M
    puts params[:manufacturer]
    selected_consoles = @@consoles.select { |console| console[:manufacturer] == params[:manufacturer] } 
    
    render(json: { 'consoles' => selected_consoles.map{ |console| console[:name] } } )
  end
end
