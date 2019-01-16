class Tennis
  attr_accessor :qtd_pontos_jogador_a
  attr_accessor :qtd_pontos_jogador_b
  attr_accessor :resultado
  
  def initialize
    @qtd_pontos_jogador_a = 0
    @qtd_pontos_jogador_b = 0
  end
  
  def computa_pontos pontos
    if(pontos == 30)
      40
    else
      pontos += 15
    end
  end
  
  def computa_jogada jogador
    if (jogador == "JogadorA")
      @qtd_pontos_jogador_a = computa_pontos @qtd_pontos_jogador_a
      if ( @qtd_pontos_jogador_a > 40 )
        @resultado = "JogadorA ganhou"
      end
    else 
      @qtd_pontos_jogador_b = computa_pontos @qtd_pontos_jogador_b
      if ( @qtd_pontos_jogador_b > 40 )
        @resultado = "JogadorB ganhou"
      end
    end
  end
  
end