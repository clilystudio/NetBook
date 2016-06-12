package com.clilystudio.netbook.model;

public class GameGiftGroup {

    public static final int TYPE_GAME = 0;
    public static final int TYPE_GIFT = 1;
    public static final int TYPE_MORE = 2;
    private GiftGame mGame;
    private GiftGameGift mGift;
    private int mType;

    public GiftGame getGame() {
        return mGame;
    }

    public void setGame(GiftGame GiftGame1) {
        mGame = GiftGame1;
    }

    public GiftGameGift getGift() {
        return mGift;
    }

    public void setGift(GiftGameGift GiftGameGift1) {
        mGift = GiftGameGift1;
    }

    public int getType() {
        return mType;
    }

    public void setType(int int1) {
        mType = int1;
    }
}
