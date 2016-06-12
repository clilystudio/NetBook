package com.clilystudio.netbook.model;

import com.ximalaya.ting.android.opensdk.model.album.Album;

import java.io.Serializable;

public class AlbumSerialized implements Serializable {

    private String announcer;
    private int id;
    private String intro;
    private String lastTrackTitle;
    private String title;
    private long totalCount;
    private long updateAt;
    private String url;
    public AlbumSerialized(Album Album1) {
        id = (int) Album1.getId();
        title = Album1.getAlbumTitle();
        totalCount = Album1.getIncludeTrackCount();
        url = Album1.getCoverUrlSmall();
        announcer = Album1.getAnnouncer().getNickname();
        intro = Album1.getAlbumIntro();
        updateAt = Album1.getUpdatedAt();
        lastTrackTitle = Album1.getLastUptrack().getTrackTitle();
    }

    public String getAnnouncer() {
        return announcer;
    }

    public void setAnnouncer(String String1) {
        announcer = String1;
    }

    public int getId() {
        return id;
    }

    public void setId(int int1) {
        id = int1;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String String1) {
        intro = String1;
    }

    public String getLastTrackTitle() {
        return lastTrackTitle;
    }

    public void setLastTrackTitle(String String1) {
        lastTrackTitle = String1;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String String1) {
        title = String1;
    }

    public long getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(long long1) {
        totalCount = long1;
    }

    public long getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(long long1) {
        updateAt = long1;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String String1) {
        url = String1;
    }
}
