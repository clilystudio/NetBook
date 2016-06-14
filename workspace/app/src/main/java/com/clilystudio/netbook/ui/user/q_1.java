package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.support.design.widget.am;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.event.K;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ChangeGenderRoot;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

final class q extends c<String, ChangeGenderRoot> {
    private /* synthetic */ ModifyUserInfoActivity a;

    public q(ModifyUserInfoActivity modifyUserInfoActivity, Activity activity, int n) {
        this.a = modifyUserInfoActivity;
        super(activity, 2131034218);
    }

    private /* varargs */ ChangeGenderRoot a(String... arrstring) {
        Account account = am.e();
        if (account != null) {
            try {
                ChangeGenderRoot changeGenderRoot = b.b().v(account.getToken(), arrstring[0]);
                return changeGenderRoot;
            } catch (IOException var3_4) {
                var3_4.printStackTrace();
            }
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final /* synthetic */ void a(Object object) {
        ChangeGenderRoot changeGenderRoot = (ChangeGenderRoot) object;
        if (changeGenderRoot != null) {
            if (!changeGenderRoot.isOk()) {
                e.a((Activity) this.a, changeGenderRoot.getErrorMessage());
                return;
            }
            UserInfo userInfo = (UserInfo) MyApplication.a().b("savedObject_userinfo");
            String string = ModifyUserInfoActivity.a(this.a).getGender().equals("male") ? "female" : "male";
            userInfo.setGender(string);
            MyApplication.a().a(userInfo, "savedObject_userinfo");
            Account account = am.a(this.a);
            if (account != null) {
                ModifyUserInfoActivity.a(this.a).setGender(string);
                account.setUser(ModifyUserInfoActivity.a(this.a));
                MyApplication.a().a(account);
            }
            TextView textView = this.a.mGenderView;
            String string2 = string.equals("male") ? "\u7537" : "\u5973";
            textView.setText(string2);
            e.a((Activity) this.a, "\u4fee\u6539\u6210\u529f");
            i.a().c(new K());
        }
    }
}
