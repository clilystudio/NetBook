package com.clilystudio.netbook.model;

public class NotificationItem$Trigger {
    final /* synthetic */ NotificationItem this$0;
    private String _id;
    private String avatar;
    private String gender;
    private int lv;
    private String nickname;
    private String type;

    public NotificationItem$Trigger(NotificationItem notificationItem) {
        this.this$0 = notificationItem;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public void setAvatar(String string) {
        this.avatar = string;
    }

    public String getGender() {
        return this.gender;
    }

    public void setGender(String string) {
        this.gender = string;
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

    public String getType() {
        return this.type;
    }

    public void setType(String string) {
        this.type = string;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }

    public Author toAuthor() {
        Author author = new Author();
        author.setLv(this.lv);
        author.setAvatar(this.avatar);
        author.setNickname(this.nickname);
        author.setType(this.type);
        return author;
    }
}
