package com.clilystudio.netbook.model;

public class GirlTopicResult {
    private boolean ok;
    private GirlTopic post;

    public GirlTopic getPost() {
        return this.post;
    }

    public void setPost(GirlTopic paramGirlTopic) {
        this.post = paramGirlTopic;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

