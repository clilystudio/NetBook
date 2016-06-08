package com.clilystudio.netbook.model;

import java.util.Date;

public class TocSummary {
    private String _id;
    private String host;
    private String lastChapter;
    private String link;
    private String name;
    private String source;
    private Date updated;

    public String getHost() {
        return this.host;
    }

    public void setHost(String paramString) {
        this.host = paramString;
    }

    public String getLastChapter() {
        return this.lastChapter;
    }

    public void setLastChapter(String paramString) {
        this.lastChapter = paramString;
    }

    public String getLink() {
        return this.link;
    }

    public void setLink(String paramString) {
        this.link = paramString;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String paramString) {
        this.name = paramString;
    }

    public String getSource() {
        return this.source;
    }

    public void setSource(String paramString) {
        this.source = paramString;
    }

    public Date getUpdated() {
        return this.updated;
    }

    public void setUpdated(Date paramDate) {
        this.updated = paramDate;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }
}

