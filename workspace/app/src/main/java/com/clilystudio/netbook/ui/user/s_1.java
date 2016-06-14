package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.support.design.widget.am;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.event.K;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ChangeNickNameRoot;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

final class s
        extends c<String, ChangeNickNameRoot> {
    private String a;
    private /* synthetic */ ModifyUserInfoActivity b;

    public s(ModifyUserInfoActivity modifyUserInfoActivity, Activity activity, int n) {
        this.b = modifyUserInfoActivity;
        super(activity, 2131034218);
    }

    private /* varargs */ ChangeNickNameRoot a(String... arrstring) {
        this.a = arrstring[0];
        Account account = am.e();
        if (account != null) {
            try {
                ChangeNickNameRoot changeNickNameRoot = b.b().u(account.getToken(), arrstring[0]);
                return changeNickNameRoot;
            } catch (IOException var3_4) {
                var3_4.printStackTrace();
            }
        }
        return null;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public final /* synthetic */ void a(Object object) {
        ChangeNickNameRoot changeNickNameRoot = (ChangeNickNameRoot) object;
        if (changeNickNameRoot == null) return;
        if (changeNickNameRoot.isOk()) {
            this.b.mNameView.setText(this.a);
            e.a((Activity) this.b, "\u4fee\u6539\u6210\u529f");
            i.a().c(new K());
            return;
        }
        e.a((Activity) this.b, changeNickNameRoot.getErrorMessage());
    }
}
