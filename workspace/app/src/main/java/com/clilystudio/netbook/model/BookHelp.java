package com.clilystudio.netbook.model;

public class BookHelp extends BookHelpSummary {
    private String content;
    private String shareLink;
    private String type;

    public String getContent() {
        return this.content;
    }

    public void setContent(String paramString) {
        this.content = paramString;
    }

    public String getShareLink() {
        return this.shareLink;
    }

    public void setShareLink(String paramString) {
        this.shareLink = paramString;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String paramString) {
        this.type = paramString;
    }
}

