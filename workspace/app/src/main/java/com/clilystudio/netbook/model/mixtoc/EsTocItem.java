package com.clilystudio.netbook.model.mixtoc;

public class EsTocItem {
    private String chapter_name;
    private String curl;
    private int sort;

    public String getChapter_name() {
        return this.chapter_name;
    }

    public void setChapter_name(String string) {
        this.chapter_name = string;
    }

    public String getCurl() {
        return this.curl;
    }

    public void setCurl(String string) {
        this.curl = string;
    }

    public int getSort() {
        return this.sort;
    }

    public void setSort(int n) {
        this.sort = n;
    }
}
