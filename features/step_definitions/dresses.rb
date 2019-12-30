

Dado("clico no menu Dresses na opcao {string}") do |dresstype|
  @dressesmenu = Dresses.new
  @dressesmenu.dressesmenu(dresstype)
end

Dado("valido que e exibida no banner a frase {string}") do |dresstypebanner|
  @dressesmenu = Dresses.new
  @dressesmenu.dressesmenuassert(dresstypebanner)
end



