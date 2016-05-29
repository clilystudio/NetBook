package com.clilystudio.app.netbook.model;

public class GirlTopicList {
    private boolean ok;
    private GirlTopicSummary[] posts;

    public GirlTopicSummary[] getPosts() {
        return this.posts;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public void setPosts(GirlTopicSummary[] paramArrayOfGirlTopicSummary) {
        this.posts = paramArrayOfGirlTopicSummary;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.GirlTopicList
 * JD-Core Version:    0.6.2
 */