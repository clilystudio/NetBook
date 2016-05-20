package com.clilystudio.app.netbook.model;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.GameRoot
 * JD-Core Version:    0.6.2
 */