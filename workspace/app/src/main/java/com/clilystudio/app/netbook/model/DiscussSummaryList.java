package com.clilystudio.app.netbook.model;

public class DiscussSummaryList {
    private boolean ok;
    private DiscussSummary[] posts;

    public DiscussSummary[] getPosts() {
        return this.posts;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public void setPosts(DiscussSummary[] paramArrayOfDiscussSummary) {
        this.posts = paramArrayOfDiscussSummary;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.DiscussSummaryList
 * JD-Core Version:    0.6.2
 */