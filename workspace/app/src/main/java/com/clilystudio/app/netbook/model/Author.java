package com.clilystudio.app.netbook.model;

import com.clilystudio.app.netbook.api.ApiService;

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

    public String getFullAvatar() {
        return ApiService.a + this.avatar;
    }

    public String getGender() {
        return this.gender;
    }

    public int getLv() {
        return this.lv;
    }

    public String getNickname() {
        return this.nickname;
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

    public String get_id() {
        return this._id;
    }

    public boolean isOfficial() {
        return "official".equals(getType());
    }

    public void setAvatar(String paramString) {
        this.avatar = paramString;
    }

    public void setGender(String paramString) {
        this.gender = paramString;
    }

    public void setLv(int paramInt) {
        this.lv = paramInt;
    }

    public void setNickname(String paramString) {
        this.nickname = paramString;
    }

    public void setType(String paramString) {
        this.type = paramString;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.Author
 * JD-Core Version:    0.6.2
 */