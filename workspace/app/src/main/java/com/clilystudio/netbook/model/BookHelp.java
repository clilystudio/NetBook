package com.clilystudio.netbook.model;

public class BookHelp
        extends BookHelpSummary {
    private String content;
    private String shareLink;
    private String type;

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

    public String getType() {
        return this.type;
    }

    public void setType(String string) {
        this.type = string;
    }
}
