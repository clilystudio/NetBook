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

    public void setChaptersCount(int paramInt) {
        this.chaptersCount = paramInt;
    }

    public boolean getIsSerial() {
        return this.isSerial;
    }

    public void setIsSerial(boolean paramBoolean) {
        this.isSerial = paramBoolean;
    }

    public String getLongIntro() {
        return this.longIntro;
    }

    public void setLongIntro(String paramString) {
        this.longIntro = paramString;
    }

    public int getPostCount() {
        return this.postCount;
    }

    public void setPostCount(int paramInt) {
        this.postCount = paramInt;
    }

    public int getSerializeWordCount() {
        return this.serializeWordCount;
    }

    public void setSerializeWordCount(int paramInt) {
        this.serializeWordCount = paramInt;
    }

    public boolean isHasCp() {
        return this.hasCp;
    }

    public void setHasCp(boolean paramBoolean) {
        this.hasCp = paramBoolean;
    }
}

