package com.clilystudio.netbook.model;

public class Vote
        implements Comparable<Vote> {
    private String content;
    private int count;

    public int compareTo(Vote paramVote) {
        return getCount() - paramVote.getCount();
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String paramString) {
        this.content = paramString;
    }

    public int getCount() {
        return this.count;
    }

    public void setCount(int paramInt) {
        this.count = paramInt;
    }
}

