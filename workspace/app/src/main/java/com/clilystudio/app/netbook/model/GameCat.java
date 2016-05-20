package com.clilystudio.app.netbook.model;

import java.io.Serializable;

public class GameCat
  implements Serializable
{
  private static final long serialVersionUID = -6787668753116463755L;
  private String _id;
  private Game[] games;

  public Game[] getGames()
  {
    return this.games;
  }

  public String get_id()
  {
    return this._id;
  }

  public void setGames(Game[] paramArrayOfGame)
  {
    this.games = paramArrayOfGame;
  }

  public void set_id(String paramString)
  {
    this._id = paramString;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.GameCat
 * JD-Core Version:    0.6.2
 */