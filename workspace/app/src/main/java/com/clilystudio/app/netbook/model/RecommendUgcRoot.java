package com.clilystudio.app.netbook.model;

public class RecommendUgcRoot {
    private RecommendUgcRoot.RecommendUGC[] booklists;
    private boolean ok;

    public RecommendUgcRoot.RecommendUGC[] getBooklists() {
        return this.booklists;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setBooklists(RecommendUgcRoot.RecommendUGC[] paramArrayOfRecommendUGC) {
        this.booklists = paramArrayOfRecommendUGC;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.RecommendUgcRoot
 * JD-Core Version:    0.6.2
 */