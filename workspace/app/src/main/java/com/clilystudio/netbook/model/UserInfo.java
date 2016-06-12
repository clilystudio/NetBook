
package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;
import java.io.Serializable;
import java.util.Date;

public class UserInfo implements Serializable {

    private String _id;
    private String avatar;
    private UserInfo$BookListCount book_list_count;
    private String code;
    private int exp;
    private String gender;
    private boolean genderChanged;
    private int lv;
    private String nickname;
    private Date nicknameUpdated;
    private boolean ok;
    private UserInfo$UserPostCount post_count;
    private float rank;
    private UserInfo$ThisWeekTasks this_week_tasks;
    private UserInfo$UserTodayTask today_tasks;
    private static final long serialVersionUID = 2519451769850149545L;

    public String getAvatar()
    {
        return avatar;
    }

    public UserInfo$BookListCount getBook_list_count()
    {
        return book_list_count;
    }

    public String getCode()
    {
        return code;
    }

    public int getExp()
    {
        return exp;
    }

    public String getGender()
    {
        return gender;
    }

    public String getId()
    {
        return _id;
    }

    public int getLv()
    {
        return lv;
    }

    public String getNickname()
    {
        return nickname;
    }

    public Date getNicknameUpdated()
    {
        return nicknameUpdated;
    }

    public UserInfo$UserPostCount getPost_count()
    {
        return post_count;
    }

    public float getRank()
    {
        return rank;
    }

    public String getScaleAvatar(int int1)
    {
        if( int1 == 2 )
            return new StringBuilder().append( ApiService.a ).append( avatar ).append( "-avatarl" ).toString();
        else
            return new StringBuilder().append( ApiService.a ).append( avatar ).append( "-avatars" ).toString();
    }

    public UserInfo$ThisWeekTasks getThis_week_tasks()
    {
        return this_week_tasks;
    }

    public UserInfo$UserTodayTask getToday_tasks()
    {
        return today_tasks;
    }

    public boolean isGenderChanged()
    {
        return genderChanged;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setAvatar(String String1)
    {
        avatar = String1;
    }

    public void setBook_list_count(UserInfo$BookListCount BookListCount1)
    {
        book_list_count = BookListCount1;
    }

    public void setCode(String String1)
    {
        code = String1;
    }

    public void setExp(int int1)
    {
        exp = int1;
    }

    public void setGender(String String1)
    {
        gender = String1;
    }

    public void setGenderChanged(boolean boolean1)
    {
        genderChanged = boolean1;
    }

    public void setId(String String1)
    {
        _id = String1;
    }

    public void setLv(int int1)
    {
        lv = int1;
    }

    public void setNickname(String String1)
    {
        nickname = String1;
    }

    public void setNicknameUpdated(Date Date1)
    {
        nicknameUpdated = Date1;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }

    public void setPost_count(UserInfo$UserPostCount UserPostCount1)
    {
        post_count = UserPostCount1;
    }

    public void setRank(float float1)
    {
        rank = float1;
    }

    public void setThis_week_tasks(UserInfo$ThisWeekTasks ThisWeekTasks1)
    {
        this_week_tasks = ThisWeekTasks1;
    }

    public void setToday_tasks(UserInfo$UserTodayTask UserTodayTask1)
    {
        today_tasks = UserTodayTask1;
    }
}
