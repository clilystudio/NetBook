package com.clilystudio.netbook;

import com.clilystudio.netbook.model.User;

import java.util.Properties;

class MyApplication$4 extends Properties {

    private static final long serialVersionUID = 8794384850518743201L;
    MyApplication this$0;     // final access specifier removed
    User val$user;     // final access specifier removed
    MyApplication$4(MyApplication MyApplication1, User User2) {
        this$0 = MyApplication1;
        val$user = User2;
        setProperty("user.id", val$user.getId());
        setProperty("user.name", val$user.getNickname());
        setProperty("user.avatar", val$user.getAvatar());
        setProperty("user.lv", String.valueOf(val$user.getLv()));
        if (val$user.getGender() != null)
            setProperty("user.gender", val$user.getGender());
    }
}
