package com.clilystudio.netbook.model;

public class RecommendUgcRoot {
    private RecommendUgcRoot.RecommendUGC[] booklists;
    private boolean ok;

    public RecommendUgcRoot.RecommendUGC[] getBooklists() {
        return this.booklists;
    }

    public void setBooklists(RecommendUgcRoot.RecommendUGC[] paramArrayOfRecommendUGC) {
        this.booklists = paramArrayOfRecommendUGC;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

