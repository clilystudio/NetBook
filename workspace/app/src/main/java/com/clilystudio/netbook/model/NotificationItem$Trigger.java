
package com.clilystudio.netbook.model;

public class NotificationItem$Trigger {

    public NotificationItem$Trigger(NotificationItem NotificationItem1)
    {
        this$0 = NotificationItem1;
    }

    private String _id;
    private String avatar;
    private String gender;
    private int lv;
    private String nickname;
    NotificationItem this$0;     // final access specifier removed
    private String type;

    public String getAvatar()
    {
        return avatar;
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

    public String getType()
    {
        return type;
    }

    public String get_id()
    {
        return _id;
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

    public Author toAuthor()
    {
        Author Author1 = new Author();

        Author1.setLv( lv );
        Author1.setAvatar( avatar );
        Author1.setNickname( nickname );
        Author1.setType( type );
        return Author1;
    }
}
