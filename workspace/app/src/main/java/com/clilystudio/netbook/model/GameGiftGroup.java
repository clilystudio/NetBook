
package com.clilystudio.netbook.model;

public class GameGiftGroup {

    private GiftGame mGame;
    private GiftGameGift mGift;
    private int mType;
    public static final int TYPE_GAME = 0;
    public static final int TYPE_GIFT = 1;
    public static final int TYPE_MORE = 2;

    public GiftGame getGame()
    {
        return mGame;
    }

    public GiftGameGift getGift()
    {
        return mGift;
    }

    public int getType()
    {
        return mType;
    }

    public void setGame(GiftGame GiftGame1)
    {
        mGame = GiftGame1;
    }

    public void setGift(GiftGameGift GiftGameGift1)
    {
        mGift = GiftGameGift1;
    }

    public void setType(int int1)
    {
        mType = int1;
    }
}
