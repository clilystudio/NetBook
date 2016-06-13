package com.clilystudio.netbook.model;

public class MhdInfo {
    private String author;
    private String bigbookid;
    private String clickrate;
    private String coverurl;
    private String description;
    private String name;
    private int position;

    public String getAuthor() {
        return this.author;
    }

    public void setAuthor(String string) {
        this.author = string;
    }

    public String getBigbookid() {
        return this.bigbookid;
    }

    public void setBigbookid(String string) {
        this.bigbookid = string;
    }

    public String getClickrate() {
        return this.clickrate;
    }

    public void setClickrate(String string) {
        this.clickrate = string;
    }

    public String getCoverurl() {
        return this.coverurl;
    }

    public void setCoverurl(String string) {
        this.coverurl = string;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String string) {
        this.description = string;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String string) {
        this.name = string;
    }

    public int getPosition() {
        return this.position;
    }

    public void setPosition(int n) {
        this.position = n;
    }
}
