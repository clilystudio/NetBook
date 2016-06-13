package com.clilystudio.netbook.model;

import java.io.Serializable;

public class Game
        implements Serializable {
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
    private MainPromoInfo mainPromoInfo;
    private String name;
    private String[] pictures;
    private boolean recommend;
    private String shortIntro;

    public String getAndroidLink() {
        return this.androidLink;
    }

    public void setAndroidLink(String string) {
        this.androidLink = string;
    }

    public String getAndroidPackageName() {
        return this.androidPackageName;
    }

    public void setAndroidPackageName(String string) {
        this.androidPackageName = string;
    }

    public int getAndroidSize() {
        return this.androidSize;
    }

    public void setAndroidSize(int n) {
        this.androidSize = n;
    }

    public String getBanner() {
        return this.banner;
    }

    public void setBanner(String string) {
        this.banner = string;
    }

    public String getCat() {
        return this.cat;
    }

    public void setCat(String string) {
        this.cat = string;
    }

    public String getCover() {
        return this.cover;
    }

    public void setCover(String string) {
        this.cover = string;
    }

    public int getDownloadStatus() {
        return this.downloadStatus;
    }

    public void setDownloadStatus(int n) {
        this.downloadStatus = n;
    }

    public int getFollowers() {
        return this.followers;
    }

    public void setFollowers(int n) {
        this.followers = n;
    }

    public String getIcon() {
        return this.icon;
    }

    public void setIcon(String string) {
        this.icon = string;
    }

    public int getIconId() {
        return this.iconId;
    }

    public void setIconId(int n) {
        this.iconId = n;
    }

    public String getIntro() {
        return this.intro;
    }

    public void setIntro(String string) {
        this.intro = string;
    }

    public String getLocalFileUri() {
        return this.localFileUri;
    }

    public void setLocalFileUri(String string) {
        this.localFileUri = string;
    }

    public MainPromoInfo getMainPromoInfo() {
        return this.mainPromoInfo;
    }

    public void setMainPromoInfo(MainPromoInfo mainPromoInfo) {
        this.mainPromoInfo = mainPromoInfo;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String string) {
        this.name = string;
    }

    public String[] getPictures() {
        return this.pictures;
    }

    public void setPictures(String[] arrstring) {
        this.pictures = arrstring;
    }

    public String getShortIntro() {
        return this.shortIntro;
    }

    public void setShortIntro(String string) {
        this.shortIntro = string;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }

    public boolean isActivityFlag() {
        return this.activityFlag;
    }

    public void setActivityFlag(boolean bl) {
        this.activityFlag = bl;
    }

    public boolean isFirsthand() {
        return this.firsthand;
    }

    public void setFirsthand(boolean bl) {
        this.firsthand = bl;
    }

    public boolean isGiftFlag() {
        return this.giftFlag;
    }

    public void setGiftFlag(boolean bl) {
        this.giftFlag = bl;
    }

    public boolean isH5MainPromo() {
        return this.h5MainPromo;
    }

    public void setH5MainPromo(boolean bl) {
        this.h5MainPromo = bl;
    }

    public boolean isHotFlag() {
        return this.hotFlag;
    }

    public void setHotFlag(boolean bl) {
        this.hotFlag = bl;
    }

    public boolean isMainPromo() {
        return this.mainPromo;
    }

    public void setMainPromo(boolean bl) {
        this.mainPromo = bl;
    }

    public boolean isRecommend() {
        return this.recommend;
    }

    public void setRecommend(boolean bl) {
        this.recommend = bl;
    }
}
