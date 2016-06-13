package com.clilystudio.netbook.model;

public class GirlTopicResult {
    private boolean ok;
    private GirlTopic post;

    public GirlTopic getPost() {
        return this.post;
    }

    public void setPost(GirlTopic girlTopic) {
        this.post = girlTopic;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
