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
        return body;
    }

    public void setBody(String String1) {
        body = String1;
    }

    public String getContent() {
        if (cpContent != null)
            return cpContent;
        else
            return content;
    }

    public void setContent(String String1) {
        content = String1;
    }

    public String getCpContent() {
        return cpContent;
    }

    public void setCpContent(String String1) {
        cpContent = String1;
    }

    public int getCurrency() {
        return currency;
    }

    public void setCurrency(int int1) {
        currency = int1;
    }

    public String getId() {
        return id;
    }

    public void setId(String String1) {
        id = String1;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String String1) {
        link = String1;
    }

    public boolean isVip() {
        return isVip;
    }

    public void setIsVip(boolean boolean1) {
        isVip = boolean1;
    }
}
