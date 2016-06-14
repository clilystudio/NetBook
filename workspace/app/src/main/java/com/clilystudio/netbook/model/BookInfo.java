package com.clilystudio.netbook.model;

public class BookInfo extends BookSummary {
    private static final long serialVersionUID = -8685880187278615441L;
    private int chaptersCount;
    private boolean hasCp;
    private boolean isSerial;
    private String longIntro;
    private int postCount;
    private int serializeWordCount = -1;

    public int getChaptersCount() {
        return this.chaptersCount;
    }

    public void setChaptersCount(int n) {
        this.chaptersCount = n;
    }

    public boolean getIsSerial() {
        return this.isSerial;
    }

    public void setIsSerial(boolean bl) {
        this.isSerial = bl;
    }

    public String getLongIntro() {
        return this.longIntro;
    }

    public void setLongIntro(String string) {
        this.longIntro = string;
    }

    public int getPostCount() {
        return this.postCount;
    }

    public void setPostCount(int n) {
        this.postCount = n;
    }

    public int getSerializeWordCount() {
        return this.serializeWordCount;
    }

    public void setSerializeWordCount(int n) {
        this.serializeWordCount = n;
    }

    public boolean isHasCp() {
        return this.hasCp;
    }

    public void setHasCp(boolean bl) {
        this.hasCp = bl;
    }
}
