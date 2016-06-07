package com.ushaqi.zhuishushenqi.model;

public class GameGiftGroup
{
  public static final int TYPE_GAME = 0;
  public static final int TYPE_GIFT = 1;
  public static final int TYPE_MORE = 2;
  private GiftGame mGame;
  private GiftGameGift mGift;
  private int mType;

  public GiftGame getGame()
  {
    return this.mGame;
  }

  public GiftGameGift getGift()
  {
    return this.mGift;
  }

  public int getType()
  {
    return this.mType;
  }

  public void setGame(GiftGame paramGiftGame)
  {
    this.mGame = paramGiftGame;
  }

  public void setGift(GiftGameGift paramGiftGameGift)
  {
    this.mGift = paramGiftGameGift;
  }

  public void setType(int paramInt)
  {
    this.mType = paramInt;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.GameGiftGroup
 * JD-Core Version:    0.6.0
 */