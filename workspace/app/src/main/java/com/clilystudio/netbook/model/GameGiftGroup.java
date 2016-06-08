package com.clilystudio.netbook.model;

public class GameGiftGroup {
    public static final int TYPE_GAME = 0;
    public static final int TYPE_GIFT = 1;
    public static final int TYPE_MORE = 2;
    private GiftGame mGame;
    private GiftGameGift mGift;
    private int mType;

    public GiftGame getGame() {
        return this.mGame;
    }

    public void setGame(GiftGame paramGiftGame) {
        this.mGame = paramGiftGame;
    }

    public GiftGameGift getGift() {
        return this.mGift;
    }

    public void setGift(GiftGameGift paramGiftGameGift) {
        this.mGift = paramGiftGameGift;
    }

    public int getType() {
        return this.mType;
    }

    public void setType(int paramInt) {
        this.mType = paramInt;
    }
}

