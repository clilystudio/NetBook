package com.clilystudio.netbook.model;

public class GirlTopic extends GirlTopicSummary {
    private String content;
    private String shareLink;

    public String getContent() {
        return this.content;
    }

    public void setContent(String string) {
        this.content = string;
    }

    public String getShareLink() {
        return this.shareLink;
    }

    public void setShareLink(String string) {
        this.shareLink = string;
    }
}
