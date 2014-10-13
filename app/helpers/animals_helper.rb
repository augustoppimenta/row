module AnimalsHelper


  def rep(age, peso, race_id)
    if(race_id=1 & peso>=330 && age >= 15)
      status="Esta novilha já pode ser liberada para reprodução!"
      elsif (race_id=2 & peso>=330 && age >= 24)
        status="Esta novilha já pode ser liberada para reprodução!"
      elsif (race_id=3 & peso>=320 && age >= 20)
        status="Esta novilha já pode ser liberada para reprodução!"
      elsif (race_id=4 & peso>=230 && age >= 15)
        status="Esta novilha já pode ser liberada para reprodução!"
      else (race_id=5 & peso>=270 && age >= 20)
        status="Esta novilha já pode ser liberada para reprodução!"
    end
  end
end
