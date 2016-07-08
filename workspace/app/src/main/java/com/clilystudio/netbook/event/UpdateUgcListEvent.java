package com.clilystudio.netbook.event;

public final class UpdateUgcListEvent {
    private String mId;
    private String mTitle;
    private String mDesc;
    private String mCover;
    private int mSize;

    public UpdateUgcListEvent(String id, String title, String desc, int size, String cover) {
        this.mId = id;
        this.mTitle = title;
        this.mDesc = desc;
        this.mSize = size;
        this.mCover = cover;
    }

    public final String getCover() {
        return this.mCover;
    }

    public final String getId() {
        return this.mId;
    }

    public final String getTitle() {
        return this.mTitle;
    }

    public final String getDesc() {
        return this.mDesc;
    }

    public final int getSize() {
        return this.mSize;
    }
}
