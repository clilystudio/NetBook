package com.clilystudio.netbook.model;

public class TocDownloadSummary {
    private int count;
    private String hostName;
    private String tocId;

    public int getCount() {
        return this.count;
    }

    public void setCount(int n) {
        this.count = n;
    }

    public String getHostName() {
        return this.hostName;
    }

    public void setHostName(String string) {
        this.hostName = string;
    }

    public String getTocId() {
        return this.tocId;
    }

    public void setTocId(String string) {
        this.tocId = string;
    }
}
