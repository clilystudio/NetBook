package com.clilystudio.netbook.model;

public class BookRankDetailRoot {
    private boolean ok;
    private BookRankDetailList ranking;

    public BookRankDetailList getRanking() {
        return this.ranking;
    }

    public void setRanking(BookRankDetailList paramBookRankDetailList) {
        this.ranking = paramBookRankDetailList;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

