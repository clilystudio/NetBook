package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

import java.io.Serializable;

public class Author implements Serializable {

    private static final long serialVersionUID = 4660498853182934697L;
    private String _id;
    private String avatar;
    private String gender;
    private int lv;
    private String nickname;
    private String type;

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String String1) {
        avatar = String1;
    }

    public String getFullAvatar() {
        return new StringBuilder().append(ApiService.a).append(avatar).toString();
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String String1) {
        gender = String1;
    }

    public int getLv() {
        return lv;
    }

    public void setLv(int int1) {
        lv = int1;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String String1) {
        nickname = String1;
    }

    public String getScaleAvatar() {
        return getScaleAvatar(1);
    }

    public String getScaleAvatar(int int1) {
        if (int1 == 1)
            return new StringBuilder().append(ApiService.a).append(avatar).append("-avatars").toString();
        else
            return new StringBuilder().append(ApiService.a).append(avatar).append("-avatarl").toString();
    }

    public String getType() {
        return type;
    }

    public void setType(String String1) {
        type = String1;
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String String1) {
        _id = String1;
    }

    public boolean isOfficial() {
        return "official".equals(getType());
    }
}
