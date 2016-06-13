package com.clilystudio.netbook;

import com.clilystudio.netbook.model.User;

import java.util.Properties;

class MyApplication$4
        extends Properties {
    private static final long serialVersionUID = 8794384850518743201L;
    final /* synthetic */ MyApplication this$0;
    final /* synthetic */ User val$user;

    MyApplication$4(MyApplication myApplication, User user) {
        this.this$0 = myApplication;
        this.val$user = user;
        this.setProperty("user.id", this.val$user.getId());
        this.setProperty("user.name", this.val$user.getNickname());
        this.setProperty("user.avatar", this.val$user.getAvatar());
        this.setProperty("user.lv", String.valueOf(this.val$user.getLv()));
        if (this.val$user.getGender() != null) {
            this.setProperty("user.gender", this.val$user.getGender());
        }
    }
}
