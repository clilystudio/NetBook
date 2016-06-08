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

    public class BookListCount implements Serializable {
        private static final long serialVersionUID = -3528347781783671315L;
        private int collected;
        private int posted;

        public int getCollected() {
            return this.collected;
        }

        public void setCollected(int paramInt) {
            this.collected = paramInt;
        }

        public int getPosted() {
            return this.posted;
        }

        public void setPosted(int paramInt) {
            this.posted = paramInt;
        }
    }

    public class ThisWeekTasks implements Serializable {
        private static final long serialVersionUID = 44867902917495881L;
        private boolean rate;

        public boolean isRate() {
            return this.rate;
        }

        public void setRate(boolean paramBoolean) {
            this.rate = paramBoolean;
        }
    }

    public class UserPostCount
            implements Serializable {
        private static final long serialVersionUID = 6406545074214643620L;
        private int collected;
        private int posted;

        public int getCollected() {
            return this.collected;
        }

        public void setCollected(int paramInt) {
            this.collected = paramInt;
        }

        public int getPosted() {
            return this.posted;
        }

        public void setPosted(int paramInt) {
            this.posted = paramInt;
        }
    }

    public class UserTodayTask implements Serializable {
        private static final long serialVersionUID = 327955040176412798L;
        private boolean comment;
        private boolean launch;
        private boolean post;
        private boolean share;
        private boolean share_book;
        private boolean vote;

        public boolean isComment() {
            return this.comment;
        }

        public void setComment(boolean paramBoolean) {
            this.comment = paramBoolean;
        }

        public boolean isLaunch() {
            return this.launch;
        }

        public void setLaunch(boolean paramBoolean) {
            this.launch = paramBoolean;
        }

        public boolean isPost() {
            return this.post;
        }

        public void setPost(boolean paramBoolean) {
            this.post = paramBoolean;
        }

        public boolean isShare() {
            return this.share;
        }

        public void setShare(boolean paramBoolean) {
            this.share = paramBoolean;
        }

        public boolean isShare_book() {
            return this.share_book;
        }

        public void setShare_book(boolean paramBoolean) {
            this.share_book = paramBoolean;
        }

        public boolean isVote() {
            return this.vote;
        }

        public void setVote(boolean paramBoolean) {
            this.vote = paramBoolean;
        }
    }
}

