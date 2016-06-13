package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;

import java.io.Serializable;
import java.util.Date;

public class UserInfo
        implements Serializable {
    private static final long serialVersionUID = 2519451769850149545L;
    private String _id;
    private String avatar;
    private BookListCount book_list_count;
    private String code;
    private int exp;
    private String gender;
    private boolean genderChanged;
    private int lv;
    private String nickname;
    private Date nicknameUpdated;
    private boolean ok;
    private UserPostCount post_count;
    private float rank;
    private ThisWeekTasks this_week_tasks;
    private UserTodayTask today_tasks;

    public String getAvatar() {
        return this.avatar;
    }

    public void setAvatar(String string) {
        this.avatar = string;
    }

    public BookListCount getBook_list_count() {
        return this.book_list_count;
    }

    public void setBook_list_count(BookListCount bookListCount) {
        this.book_list_count = bookListCount;
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String string) {
        this.code = string;
    }

    public int getExp() {
        return this.exp;
    }

    public void setExp(int n) {
        this.exp = n;
    }

    public String getGender() {
        return this.gender;
    }

    public void setGender(String string) {
        this.gender = string;
    }

    public String getId() {
        return this._id;
    }

    public void setId(String string) {
        this._id = string;
    }

    public int getLv() {
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

    public Date getNicknameUpdated() {
        return this.nicknameUpdated;
    }

    public void setNicknameUpdated(Date date) {
        this.nicknameUpdated = date;
    }

    public UserPostCount getPost_count() {
        return this.post_count;
    }

    public void setPost_count(UserPostCount userPostCount) {
        this.post_count = userPostCount;
    }

    public float getRank() {
        return this.rank;
    }

    public void setRank(float f2) {
        this.rank = f2;
    }

    public String getScaleAvatar(int n) {
        if (n == 2) {
            return ApiService.a + this.avatar + "-avatarl";
        }
        return ApiService.a + this.avatar + "-avatars";
    }

    public ThisWeekTasks getThis_week_tasks() {
        return this.this_week_tasks;
    }

    public void setThis_week_tasks(ThisWeekTasks thisWeekTasks) {
        this.this_week_tasks = thisWeekTasks;
    }

    public UserTodayTask getToday_tasks() {
        return this.today_tasks;
    }

    public void setToday_tasks(UserTodayTask userTodayTask) {
        this.today_tasks = userTodayTask;
    }

    public boolean isGenderChanged() {
        return this.genderChanged;
    }

    public void setGenderChanged(boolean bl) {
        this.genderChanged = bl;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
