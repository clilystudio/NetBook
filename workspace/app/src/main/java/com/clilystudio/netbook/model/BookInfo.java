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
        return chaptersCount;
    }

    public void setChaptersCount(int int1) {
        chaptersCount = int1;
    }

    public boolean getIsSerial() {
        return isSerial;
    }

    public void setIsSerial(boolean boolean1) {
        isSerial = boolean1;
    }

    public String getLongIntro() {
        return longIntro;
    }

    public void setLongIntro(String String1) {
        longIntro = String1;
    }

    public int getPostCount() {
        return postCount;
    }

    public void setPostCount(int int1) {
        postCount = int1;
    }

    public int getSerializeWordCount() {
        return serializeWordCount;
    }

    public void setSerializeWordCount(int int1) {
        serializeWordCount = int1;
    }

    public boolean isHasCp() {
        return hasCp;
    }

    public void setHasCp(boolean boolean1) {
        hasCp = boolean1;
    }
}
