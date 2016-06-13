package com.clilystudio.netbook.ui.home;

import android.app.Activity;
import android.support.design.widget.am;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

final class P
        extends com.clilystudio.netbook.a.e<String, Void, UserInfo> {
    private /* synthetic */ HomeTopicFragment a;

    private P(HomeTopicFragment homeTopicFragment) {
        this.a = homeTopicFragment;
    }

    /* synthetic */ P(HomeTopicFragment homeTopicFragment, byte by) {
        this(homeTopicFragment);
    }

    private /* varargs */ UserInfo a(String... arrstring) {
        try {
            UserInfo userInfo = b.b().K(arrstring[0]);
            return userInfo;
        } catch (IOException var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return this.a((String[]) arrobject);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        UserInfo userInfo = (UserInfo) object;
        super.onPostExecute(userInfo);
        if (userInfo == null) {
            e.a((Activity) this.a.getActivity(), (String) "\u5e10\u53f7\u65e0\u6548\u6216\u8fc7\u671f\uff0c\u8bf7\u9000\u51fa\u767b\u5f55\u540e\u91cd\u8bd5");
            MyApplication.a().b("savedObject_userinfo");
            return;
        }
        if (userInfo.isOk()) {
            MyApplication.a().a(userInfo, "savedObject_userinfo");
            String string = userInfo.getGender();
            if (string == null) {
                e.a((Activity) this.a.getActivity(), (String) "\u65e0\u6cd5\u83b7\u53d6\u6027\u522b\u4fe1\u606f\uff0c\u8bf7\u9000\u51fa\u767b\u5f55\u540e\u91cd\u8bd5");
                return;
            }
            Account account = am.e();
            account.getUser().setGender(string);
            MyApplication.a().a(account);
            HomeTopicFragment.a(this.a, string);
            return;
        } else {
            if (!"TOKEN_INVALID".equals(userInfo.getCode())) return;
            {
                e.a((Activity) this.a.getActivity(), (String) "\u5e10\u53f7\u65e0\u6548\u6216\u8fc7\u671f\uff0c\u8bf7\u9000\u51fa\u767b\u5f55\u540e\u91cd\u8bd5");
                return;
            }
        }
    }
}
