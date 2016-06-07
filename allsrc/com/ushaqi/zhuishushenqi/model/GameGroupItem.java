package com.ushaqi.zhuishushenqi.model;

import java.util.List;

public class GameGroupItem
{
  private String _id;
  private List<Game> games;
  private String name;

  public List<Game> getGames()
  {
    return this.games;
  }

  public String getName()
  {
    return this.name;
  }

  public int getRowCount()
  {
    if (this.games.size() % 3 == 0)
      return this.games.size() / 3;
    return 1 + this.games.size() / 3;
  }

  public String get_id()
  {
    return this._id;
  }

  public void setGames(List<Game> paramList)
  {
    this.games = paramList;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }

  public void set_id(String paramString)
  {
    this._id = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.GameGroupItem
 * JD-Core Version:    0.6.0
 */