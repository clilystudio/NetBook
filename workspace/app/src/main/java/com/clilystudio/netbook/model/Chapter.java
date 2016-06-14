package com.clilystudio.netbook.model;

import java.io.Serializable;

public class Chapter implements Serializable {
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

    public void setBody(String string) {
        this.body = string;
    }

    public String getContent() {
        if (this.cpContent != null) {
            return this.cpContent;
        }
        return this.content;
    }

    public void setContent(String string) {
        this.content = string;
    }

    public String getCpContent() {
        return this.cpContent;
    }

    public void setCpContent(String string) {
        this.cpContent = string;
    }

    public int getCurrency() {
        return this.currency;
    }

    public void setCurrency(int n) {
        this.currency = n;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String string) {
        this.id = string;
    }

    public String getLink() {
        return this.link;
    }

    public void setLink(String string) {
        this.link = string;
    }

    public boolean isVip() {
        return this.isVip;
    }

    public void setIsVip(boolean bl) {
        this.isVip = bl;
    }
}
