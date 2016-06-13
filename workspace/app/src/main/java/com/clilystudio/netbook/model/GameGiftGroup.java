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

    public void setGame(GiftGame giftGame) {
        this.mGame = giftGame;
    }

    public GiftGameGift getGift() {
        return this.mGift;
    }

    public void setGift(GiftGameGift giftGameGift) {
        this.mGift = giftGameGift;
    }

    public int getType() {
        return this.mType;
    }

    public void setType(int n) {
        this.mType = n;
    }
}
