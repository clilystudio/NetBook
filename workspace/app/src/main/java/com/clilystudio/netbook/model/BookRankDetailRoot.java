
package com.clilystudio.netbook.model;

public class BookRankDetailRoot {

    private boolean ok;
    private BookRankDetailList ranking;

    public BookRankDetailList getRanking()
    {
        return ranking;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }

    public void setRanking(BookRankDetailList BookRankDetailList1)
    {
        ranking = BookRankDetailList1;
    }
}
