
package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;
import java.io.Serializable;

public class Author implements Serializable {

    private String _id;
    private String avatar;
    private String gender;
    private int lv;
    private String nickname;
    private String type;
    private static final long serialVersionUID = 4660498853182934697L;

    public String getAvatar()
    {
        return avatar;
    }

    public String getFullAvatar()
    {
        return new StringBuilder().append( ApiService.a ).append( avatar ).toString();
    }

    public String getGender()
    {
        return gender;
    }

    public int getLv()
    {
        return lv;
    }

    public String getNickname()
    {
        return nickname;
    }

    public String getScaleAvatar()
    {
        return getScaleAvatar( 1 );
    }

    public String getScaleAvatar(int int1)
    {
        if( int1 == 1 )
            return new StringBuilder().append( ApiService.a ).append( avatar ).append( "-avatars" ).toString();
        else
            return new StringBuilder().append( ApiService.a ).append( avatar ).append( "-avatarl" ).toString();
    }

    public String getType()
    {
        return type;
    }

    public String get_id()
    {
        return _id;
    }

    public boolean isOfficial()
    {
        return "official".equals( getType() );
    }

    public void setAvatar(String String1)
    {
        avatar = String1;
    }

    public void setGender(String String1)
    {
        gender = String1;
    }

    public void setLv(int int1)
    {
        lv = int1;
    }

    public void setNickname(String String1)
    {
        nickname = String1;
    }

    public void setType(String String1)
    {
        type = String1;
    }

    public void set_id(String String1)
    {
        _id = String1;
    }
}
