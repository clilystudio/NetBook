package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

import java.io.Serializable;

public class User
        implements Serializable {
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

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public int getGenderFlag() {
        var1_1 = this.gender;
        var2_2 = -1;
        switch (var1_1.hashCode()) {
            case 3343885: {
                if (var1_1.equals("male")) {
                    var2_2 = 0;
                    **break;
                }
                **GOTO lbl12
            }
            case -1278174388: {
                if (var1_1.equals("female")) {
                    var2_2 = 1;
                }
            }
            lbl12:
            // 6 sources:
            default:
            {
                **GOTO lbl17
            }
            case 3392903:
        }
        if (var1_1.equals("null")) {
            var2_2 = 2;
        }
        lbl17:
        // 4 sources:
        switch (var2_2) {
            default: {
                return 0;
            }
            case 1: {
                return 1;
            }
            case 2:
        }
        return 2;
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
