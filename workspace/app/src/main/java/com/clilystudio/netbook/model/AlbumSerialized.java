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

    public AlbumSerialized(Album album) {
        this.id = (int) album.getId();
        this.title = album.getAlbumTitle();
        this.totalCount = album.getIncludeTrackCount();
        this.url = album.getCoverUrlSmall();
        this.announcer = album.getAnnouncer().getNickname();
        this.intro = album.getAlbumIntro();
        this.updateAt = album.getUpdatedAt();
        this.lastTrackTitle = album.getLastUptrack().getTrackTitle();
    }

    public String getAnnouncer() {
        return this.announcer;
    }

    public void setAnnouncer(String string) {
        this.announcer = string;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int n) {
        this.id = n;
    }

    public String getIntro() {
        return this.intro;
    }

    public void setIntro(String string) {
        this.intro = string;
    }

    public String getLastTrackTitle() {
        return this.lastTrackTitle;
    }

    public void setLastTrackTitle(String string) {
        this.lastTrackTitle = string;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String string) {
        this.title = string;
    }

    public long getTotalCount() {
        return this.totalCount;
    }

    public void setTotalCount(long l) {
        this.totalCount = l;
    }

    public long getUpdateAt() {
        return this.updateAt;
    }

    public void setUpdateAt(long l) {
        this.updateAt = l;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String string) {
        this.url = string;
    }
}
