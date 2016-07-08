package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

import java.io.Serializable;

public class User implements Serializable {
    private static final String FEMALE = "female";
    private static final String MALE = "male";
    private static final String UNKNOWN = "null";
    private static final long serialVersionUID = 4596333208470430366L;
    private String _id;
    private String avatar;
    private int exp;
    private String gender;
    private int lv;
    private String nickname;
    private String type;

    public String getAvatar() {
        return this.avatar;
    }

    public void setAvatar(String string) {
        this.avatar = string;
    }

    public int getExp() {
        return this.exp;
    }

    public void setExp(int n) {
        this.exp = n;
    }

    public String getFullAvatar() {
        return ApiService.a + this.avatar;
    }

    public String getGender() {
        return this.gender;
    }

    public void setGender(String string) {
        this.gender = string;
    }

    public int getGenderFlag() {
        switch (this.gender) {
            case "male":
                return 0;
            case "female":
                return 1;
            default:
                return 2;
        }
    }

    public String getId() {
        return this._id;
    }

    public void setId(String string) {
        this._id = string;
    }

    public int getLv() {
        if (this.lv <= 0) {
            this.lv = 1;
        }
        return this.lv;
    }

    public void setLv(int n) {
        this.lv = n;
    }

    public String getNickname() {
        return this.nickname;
    }

    public void setNickname(String string) {
        this.nickname = string;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String string) {
        this.type = string;
    }

    public boolean isDoyan() {
        return "doyen".equals(this.getType());
    }

    public boolean isOfficial() {
        return "official".equals(this.getType());
    }
}
