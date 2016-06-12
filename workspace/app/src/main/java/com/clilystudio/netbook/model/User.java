
package com.clilystudio.netbook.model;

import com.clilystudio.netbook.api.ApiService;
import java.io.Serializable;

public class User implements Serializable {

    private String _id;
    private String avatar;
    private int exp;
    private String gender;
    private int lv;
    private String nickname;
    private String type;
    private static final String FEMALE = "female";
    private static final String MALE = "male";
    private static final String UNKNOWN = "null";
    private static final long serialVersionUID = 4596333208470430366L;

    public String getAvatar()
    {
        return avatar;
    }

    public int getExp()
    {
        return exp;
    }

    public String getFullAvatar()
    {
        return new StringBuilder().append( ApiService.a ).append( avatar ).toString();
    }

    public String getGender()
    {
        return gender;
    }

    public int getGenderFlag()
    {
        String String1 = gender;
        int int2 = -1;

        switch( String1.hashCode() )
        {
            case 3343885:
                if( String1.equals( "male" ) )
                {
                    int2 = 0;
                    break;
                }
                break;
            case -1278174388:
                if( String1.equals( "female" ) )
                {
                    int2 = 1;
                    break;
                }
                break;
            case 3392903:
                if( String1.equals( "null" ) )
                {
                    int2 = 2;
                    break;
                }
                break;
            default:
                break;
        }
        switch( int2 )
        {
            case 0:
            default:
                return 0;
            case 1:
                return 1;
            case 2:
                return 2;
        }
    }

    public String getId()
    {
        return _id;
    }

    public int getLv()
    {
        if( lv <= 0 )
            lv = 1;
        return lv;
    }

    public String getNickname()
    {
        return nickname;
    }

    public String getType()
    {
        return type;
    }

    public boolean isDoyan()
    {
        return "doyen".equals( getType() );
    }

    public boolean isOfficial()
    {
        return "official".equals( getType() );
    }

    public void setAvatar(String String1)
    {
        avatar = String1;
    }

    public void setExp(int int1)
    {
        exp = int1;
    }

    public void setGender(String String1)
    {
        gender = String1;
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

    public void setType(String String1)
    {
        type = String1;
    }
}
