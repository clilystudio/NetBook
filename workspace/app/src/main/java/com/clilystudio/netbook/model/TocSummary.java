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

    public void setHost(String string) {
        this.host = string;
    }

    public String getLastChapter() {
        return this.lastChapter;
    }

    public void setLastChapter(String string) {
        this.lastChapter = string;
    }

    public String getLink() {
        return this.link;
    }

    public void setLink(String string) {
        this.link = string;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String string) {
        this.name = string;
    }

    public String getSource() {
        return this.source;
    }

    public void setSource(String string) {
        this.source = string;
    }

    public Date getUpdated() {
        return this.updated;
    }

    public void setUpdated(Date date) {
        this.updated = date;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }
}
