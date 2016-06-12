
package com.clilystudio.netbook.model;

public class RecommendUgcRoot {

    private RecommendUgcRoot$RecommendUGC[] booklists;
    private boolean ok;

    public RecommendUgcRoot$RecommendUGC[] getBooklists()
    {
        return booklists;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setBooklists(RecommendUgcRoot$RecommendUGC[] RecommendUGC_1darray1)
    {
        booklists = RecommendUGC_1darray1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }
}
