package com.clilystudio.netbook.model;

public class Vote
        implements Comparable<Vote> {
    private String content;
    private int count;

    @Override
    public int compareTo(Vote vote) {
        return this.getCount() - vote.getCount();
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String string) {
        this.content = string;
    }

    public int getCount() {
        return this.count;
    }

    public void setCount(int n) {
        this.count = n;
    }
}
