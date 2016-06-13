package com.clilystudio.netbook;

import com.clilystudio.netbook.model.Account;

import java.util.Properties;

class MyApplication$3
        extends Properties {
    private static final long serialVersionUID = 8794384850518743201L;
    final /* synthetic */ MyApplication this$0;
    final /* synthetic */ Account val$account;

    MyApplication$3(MyApplication myApplication, Account account) {
        this.this$0 = myApplication;
        this.val$account = account;
        this.setProperty("account.token", this.val$account.getToken());
    }
}
