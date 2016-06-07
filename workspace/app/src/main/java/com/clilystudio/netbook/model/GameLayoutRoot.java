package com.clilystudio.netbook.model;

import java.util.List;

public class GameLayoutRoot extends Root
{
  private List<GameLayoutRoot.ModuleLayout> layout;
  private Game promotion;
  private Game[] promotions;

  public List<GameLayoutRoot.ModuleLayout> getLayout()
  {
    return this.layout;
  }

  public Game getPromotion()
  {
    return this.promotion;
  }

  public Game[] getPromotions()
  {
    return this.promotions;
  }

  public void setLayout(List<GameLayoutRoot.ModuleLayout> paramList)
  {
    this.layout = paramList;
  }

  public void setPromotion(Game paramGame)
  {
    this.promotion = paramGame;
  }

  public void setPromotions(Game[] paramArrayOfGame)
  {
    this.promotions = paramArrayOfGame;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.GameLayoutRoot
 * JD-Core Version:    0.6.0
 */