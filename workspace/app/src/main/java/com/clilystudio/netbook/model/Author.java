package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

import java.io.Serializable;

public class Author
        implements Serializable {
    private static final long serialVersionUID = 4660498853182934697L;
    private String _id;
    private String avatar;
    private String gender;
    private int lv;
    private String nickname;
    private String type;

    public String getAvatar() {
        return this.avatar;
    }

    public void setAvatar(String paramString) {
        this.avatar = paramString;
    }

    public String getFullAvatar() {
        return ApiService.a + this.avatar;
    }

    public String getGender() {
        return this.gender;
    }

    public void setGender(String paramString) {
        this.gender = paramString;
    }

    public int getLv() {
        return this.lv;
    }

    public void setLv(int paramInt) {
        this.lv = paramInt;
    }

    public String getNickname() {
        return this.nickname;
    }

    public void setNickname(String paramString) {
        this.nickname = paramString;
    }

    public String getScaleAvatar() {
        return getScaleAvatar(1);
    }

    public String getScaleAvatar(int paramInt) {
        if (paramInt == 1)
            return ApiService.a + this.avatar + "-avatars";
        return ApiService.a + this.avatar + "-avatarl";
    }

    public String getType() {
        return this.type;
    }

    public void setType(String paramString) {
        this.type = paramString;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }

    public boolean isOfficial() {
        return "official".equals(getType());
    }
}

