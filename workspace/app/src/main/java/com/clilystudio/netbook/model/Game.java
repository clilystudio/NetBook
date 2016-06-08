package com.clilystudio.netbook.model;

import java.io.Serializable;

public class Game implements Serializable {
    private static final long serialVersionUID = -8334205226470939171L;
    private String _id;
    private boolean activityFlag;
    private String androidLink;
    private String androidPackageName;
    private int androidSize;
    private String banner;
    private String cat;
    private String cover;
    private int downloadStatus;
    private boolean firsthand;
    private int followers;
    private boolean giftFlag;
    private boolean h5MainPromo;
    private boolean hotFlag;
    private String icon;
    private int iconId;
    private String intro;
    private String localFileUri;
    private boolean mainPromo;
    private Game.MainPromoInfo mainPromoInfo;
    private String name;
    private String[] pictures;
    private boolean recommend;
    private String shortIntro;

    public String getAndroidLink() {
        return this.androidLink;
    }

    public void setAndroidLink(String paramString) {
        this.androidLink = paramString;
    }

    public String getAndroidPackageName() {
        return this.androidPackageName;
    }

    public void setAndroidPackageName(String paramString) {
        this.androidPackageName = paramString;
    }

    public int getAndroidSize() {
        return this.androidSize;
    }

    public void setAndroidSize(int paramInt) {
        this.androidSize = paramInt;
    }

    public String getBanner() {
        return this.banner;
    }

    public void setBanner(String paramString) {
        this.banner = paramString;
    }

    public String getCat() {
        return this.cat;
    }

    public void setCat(String paramString) {
        this.cat = paramString;
    }

    public String getCover() {
        return this.cover;
    }

    public void setCover(String paramString) {
        this.cover = paramString;
    }

    public int getDownloadStatus() {
        return this.downloadStatus;
    }

    public void setDownloadStatus(int paramInt) {
        this.downloadStatus = paramInt;
    }

    public int getFollowers() {
        return this.followers;
    }

    public void setFollowers(int paramInt) {
        this.followers = paramInt;
    }

    public String getIcon() {
        return this.icon;
    }

    public void setIcon(String paramString) {
        this.icon = paramString;
    }

    public int getIconId() {
        return this.iconId;
    }

    public void setIconId(int paramInt) {
        this.iconId = paramInt;
    }

    public String getIntro() {
        return this.intro;
    }

    public void setIntro(String paramString) {
        this.intro = paramString;
    }

    public String getLocalFileUri() {
        return this.localFileUri;
    }

    public void setLocalFileUri(String paramString) {
        this.localFileUri = paramString;
    }

    public Game.MainPromoInfo getMainPromoInfo() {
        return this.mainPromoInfo;
    }

    public void setMainPromoInfo(Game.MainPromoInfo paramMainPromoInfo) {
        this.mainPromoInfo = paramMainPromoInfo;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String paramString) {
        this.name = paramString;
    }

    public String[] getPictures() {
        return this.pictures;
    }

    public void setPictures(String[] paramArrayOfString) {
        this.pictures = paramArrayOfString;
    }

    public String getShortIntro() {
        return this.shortIntro;
    }

    public void setShortIntro(String paramString) {
        this.shortIntro = paramString;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }

    public boolean isActivityFlag() {
        return this.activityFlag;
    }

    public void setActivityFlag(boolean paramBoolean) {
        this.activityFlag = paramBoolean;
    }

    public boolean isFirsthand() {
        return this.firsthand;
    }

    public void setFirsthand(boolean paramBoolean) {
        this.firsthand = paramBoolean;
    }

    public boolean isGiftFlag() {
        return this.giftFlag;
    }

    public void setGiftFlag(boolean paramBoolean) {
        this.giftFlag = paramBoolean;
    }

    public boolean isH5MainPromo() {
        return this.h5MainPromo;
    }

    public void setH5MainPromo(boolean paramBoolean) {
        this.h5MainPromo = paramBoolean;
    }

    public boolean isHotFlag() {
        return this.hotFlag;
    }

    public void setHotFlag(boolean paramBoolean) {
        this.hotFlag = paramBoolean;
    }

    public boolean isMainPromo() {
        return this.mainPromo;
    }

    public void setMainPromo(boolean paramBoolean) {
        this.mainPromo = paramBoolean;
    }

    public boolean isRecommend() {
        return this.recommend;
    }

    public void setRecommend(boolean paramBoolean) {
        this.recommend = paramBoolean;
    }


    public class MainPromoInfo implements Serializable {
        private static final long serialVersionUID = -6306060308396347871L;
        private String desc;
        private int playingCount;

        public String getDesc() {
            return this.desc;
        }

        public void setDesc(String paramString) {
            this.desc = paramString;
        }

        public int getPlayingCount() {
            return this.playingCount;
        }

        public void setPlayingCount(int paramInt) {
            this.playingCount = paramInt;
        }
    }

}
