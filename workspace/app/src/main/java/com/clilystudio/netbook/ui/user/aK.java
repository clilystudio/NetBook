package com.clilystudio.netbook.ui.user;

import android.app.Activity;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.util.J;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

final class aK extends com.clilystudio.netbook.a_pack.e<String, Void, UserInfo> {
    private /* synthetic */ UserInfoActivity a;

    private aK(UserInfoActivity userInfoActivity) {
        this.a = userInfoActivity;
    }

    /* synthetic */ aK(UserInfoActivity userInfoActivity, byte by) {
        this(userInfoActivity);
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
        UserInfoActivity.c(this.a);
        if (userInfo != null) {
            if (userInfo.isOk()) {
                UserInfoActivity.a(this.a, userInfo);
                MyApplication.a().a(userInfo, "savedObject_userinfo");
                UserInfoActivity.a(this.a, userInfo.getNicknameUpdated());
                UserInfoActivity.a(this.a, J.a(this.a).a());
                UserInfoActivity.b(this.a, userInfo);
                return;
            } else {
                if (!"TOKEN_INVALID".equals(userInfo.getCode())) return;
                {
                    e.a((Activity) this.a, (String) "\u5e10\u53f7\u65e0\u6548\u6216\u8fc7\u671f\uff0c\u8bf7\u9000\u51fa\u767b\u5f55\u540e\u91cd\u8bd5");
                    return;
                }
            }
        } else {
            e.a((Activity) this.a, (String) "\u8f7d\u5165\u5931\u8d25");
            UserInfo userInfo2 = (UserInfo) MyApplication.a().b("savedObject_userinfo");
            if (userInfo2 == null) return;
            {
                UserInfoActivity.a(this.a, userInfo2);
                return;
            }
        }
    }
}
