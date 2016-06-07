package com.ushaqi.zhuishushenqi.model;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.GameCat
 * JD-Core Version:    0.6.0
 */