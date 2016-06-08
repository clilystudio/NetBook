package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

import java.io.Serializable;
import java.util.Date;

public class UserInfo
        implements Serializable {
    private static final long serialVersionUID = 2519451769850149545L;
    private String _id;
    private String avatar;
    private UserInfo.BookListCount book_list_count;
    private String code;
    private int exp;
    private String gender;
    private boolean genderChanged;
    private int lv;
    private String nickname;
    private Date nicknameUpdated;
    private boolean ok;
    private UserInfo.UserPostCount post_count;
    private float rank;
    private UserInfo.ThisWeekTasks this_week_tasks;
    private UserInfo.UserTodayTask today_tasks;

    public String getAvatar() {
        return this.avatar;
    }

    public void setAvatar(String paramString) {
        this.avatar = paramString;
    }

    public UserInfo.BookListCount getBook_list_count() {
        return this.book_list_count;
    }

    public void setBook_list_count(UserInfo.BookListCount paramBookListCount) {
        this.book_list_count = paramBookListCount;
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String paramString) {
        this.code = paramString;
    }

    public int getExp() {
        return this.exp;
    }

    public void setExp(int paramInt) {
        this.exp = paramInt;
    }

    public String getGender() {
        return this.gender;
    }

    public void setGender(String paramString) {
        this.gender = paramString;
    }

    public String getId() {
        return this._id;
    }

    public void setId(String paramString) {
        this._id = paramString;
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

    public Date getNicknameUpdated() {
        return this.nicknameUpdated;
    }

    public void setNicknameUpdated(Date paramDate) {
        this.nicknameUpdated = paramDate;
    }

    public UserInfo.UserPostCount getPost_count() {
        return this.post_count;
    }

    public void setPost_count(UserInfo.UserPostCount paramUserPostCount) {
        this.post_count = paramUserPostCount;
    }

    public float getRank() {
        return this.rank;
    }

    public void setRank(float paramFloat) {
        this.rank = paramFloat;
    }

    public String getScaleAvatar(int paramInt) {
        if (paramInt == 2)
            return ApiService.a + this.avatar + "-avatarl";
        return ApiService.a + this.avatar + "-avatars";
    }

    public UserInfo.ThisWeekTasks getThis_week_tasks() {
        return this.this_week_tasks;
    }

    public void setThis_week_tasks(UserInfo.ThisWeekTasks paramThisWeekTasks) {
        this.this_week_tasks = paramThisWeekTasks;
    }

    public UserInfo.UserTodayTask getToday_tasks() {
        return this.today_tasks;
    }

    public void setToday_tasks(UserInfo.UserTodayTask paramUserTodayTask) {
        this.today_tasks = paramUserTodayTask;
    }

    public boolean isGenderChanged() {
        return this.genderChanged;
    }

    public void setGenderChanged(boolean paramBoolean) {
        this.genderChanged = paramBoolean;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

