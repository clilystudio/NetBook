package com.ushaqi.zhuishushenqi.model;

public class GameRoot
{
  private Game[] games;
  private boolean ok;

  public Game[] getGames()
  {
    return this.games;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setGames(Game[] paramArrayOfGame)
  {
    this.games = paramArrayOfGame;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.GameRoot
 * JD-Core Version:    0.6.0
 */