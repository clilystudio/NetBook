package com.clilystudio.app.netbook.model;

public class NotificationItem$Trigger {
    private String _id;
    private String avatar;
    private String gender;
    private int lv;
    private String nickname;
    private String type;

    public NotificationItem$Trigger(NotificationItem paramNotificationItem) {
    }

    public String getAvatar() {
        return this.avatar;
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

    public String getType() {
        return this.type;
    }

    public String get_id() {
        return this._id;
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

    public Author toAuthor() {
        Author localAuthor = new Author();
        localAuthor.setLv(this.lv);
        localAuthor.setAvatar(this.avatar);
        localAuthor.setNickname(this.nickname);
        localAuthor.setType(this.type);
        return localAuthor;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.NotificationItem.Trigger
 * JD-Core Version:    0.6.2
 */