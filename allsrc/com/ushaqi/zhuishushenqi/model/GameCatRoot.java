package com.ushaqi.zhuishushenqi.model;

public class GameCatRoot
{
  private GameCat[] games;
  private boolean ok;

  public GameCat[] getGames()
  {
    return this.games;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setGames(GameCat[] paramArrayOfGameCat)
  {
    this.games = paramArrayOfGameCat;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.GameCatRoot
 * JD-Core Version:    0.6.0
 */