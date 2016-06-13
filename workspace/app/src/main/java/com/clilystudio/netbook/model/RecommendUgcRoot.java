package com.clilystudio.netbook.model;

public class RecommendUgcRoot {
    private RecommendUgcRoot$RecommendUGC[] booklists;
    private boolean ok;

    public RecommendUgcRoot$RecommendUGC[] getBooklists() {
        return this.booklists;
    }

    public void setBooklists(RecommendUgcRoot$RecommendUGC[] arrrecommendUgcRoot$RecommendUGC) {
        this.booklists = arrrecommendUgcRoot$RecommendUGC;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
