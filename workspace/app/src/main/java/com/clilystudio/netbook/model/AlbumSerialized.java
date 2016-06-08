package com.clilystudio.netbook.model;

import com.ximalaya.ting.android.opensdk.model.album.Album;

import java.io.Serializable;

public class AlbumSerialized
        implements Serializable {
    private String announcer;
    private int id;
    private String intro;
    private String lastTrackTitle;
    private String title;
    private long totalCount;
    private long updateAt;
    private String url;

    public AlbumSerialized(Album paramAlbum) {
        this.id = (int) paramAlbum.getId();
        this.title = paramAlbum.getAlbumTitle();
        this.totalCount = paramAlbum.getIncludeTrackCount();
        this.url = paramAlbum.getCoverUrlSmall();
        this.announcer = paramAlbum.getAnnouncer().getNickname();
        this.intro = paramAlbum.getAlbumIntro();
        this.updateAt = paramAlbum.getUpdatedAt();
        this.lastTrackTitle = paramAlbum.getLastUptrack().getTrackTitle();
    }

    public String getAnnouncer() {
        return this.announcer;
    }

    public void setAnnouncer(String paramString) {
        this.announcer = paramString;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int paramInt) {
        this.id = paramInt;
    }

    public String getIntro() {
        return this.intro;
    }

    public void setIntro(String paramString) {
        this.intro = paramString;
    }

    public String getLastTrackTitle() {
        return this.lastTrackTitle;
    }

    public void setLastTrackTitle(String paramString) {
        this.lastTrackTitle = paramString;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String paramString) {
        this.title = paramString;
    }

    public long getTotalCount() {
        return this.totalCount;
    }

    public void setTotalCount(long paramLong) {
        this.totalCount = paramLong;
    }

    public long getUpdateAt() {
        return this.updateAt;
    }

    public void setUpdateAt(long paramLong) {
        this.updateAt = paramLong;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String paramString) {
        this.url = paramString;
    }
}

