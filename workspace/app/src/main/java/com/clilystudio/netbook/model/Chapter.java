package com.clilystudio.netbook.model;

import java.io.Serializable;

public class Chapter
        implements Serializable {
    private static final long serialVersionUID = -7332522845657326368L;
    protected String link;
    private String body;
    private String content;
    private String cpContent;
    private int currency;
    private String id;
    private boolean isVip;

    public String getBody() {
        return this.body;
    }

    public void setBody(String paramString) {
        this.body = paramString;
    }

    public String getContent() {
        if (this.cpContent != null)
            return this.cpContent;
        return this.content;
    }

    public void setContent(String paramString) {
        this.content = paramString;
    }

    public String getCpContent() {
        return this.cpContent;
    }

    public void setCpContent(String paramString) {
        this.cpContent = paramString;
    }

    public int getCurrency() {
        return this.currency;
    }

    public void setCurrency(int paramInt) {
        this.currency = paramInt;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String paramString) {
        this.id = paramString;
    }

    public String getLink() {
        return this.link;
    }

    public void setLink(String paramString) {
        this.link = paramString;
    }

    public boolean isVip() {
        return this.isVip;
    }

    public void setIsVip(boolean paramBoolean) {
        this.isVip = paramBoolean;
    }
}

