package com.clilystudio.netbook.ui.user;

import android.app.Activity;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.util.e;

import java.io.IOException;
import java.util.Date;

final class r
        extends com.clilystudio.netbook.a_pack.e<String, Void, UserInfo> {
    private /* synthetic */ ModifyUserInfoActivity a;

    private r(ModifyUserInfoActivity modifyUserInfoActivity) {
        this.a = modifyUserInfoActivity;
    }

    /* synthetic */ r(ModifyUserInfoActivity modifyUserInfoActivity, byte by) {
        this(modifyUserInfoActivity);
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
            e.a((Activity) this.a, "\u8f7d\u5165\u5931\u8d25");
            MyApplication.a().b("savedObject_userinfo");
            return;
        }
        if (userInfo.isOk()) {
            MyApplication.a().a(userInfo, "savedObject_userinfo");
            Date date = userInfo.getNicknameUpdated();
            if (date == null) {
                ModifyUserInfoActivity.a(this.a, -2);
            } else {
                ModifyUserInfoActivity.a(this.a, date.getTime());
            }
            ModifyUserInfoActivity.b(this.a, true);
            ModifyUserInfoActivity.c(this.a, userInfo.isGenderChanged());
            return;
        } else {
            if (!"TOKEN_INVALID".equals(userInfo.getCode())) return;
            {
                e.a((Activity) this.a, "\u5e10\u53f7\u65e0\u6548\u6216\u8fc7\u671f\uff0c\u8bf7\u9000\u51fa\u767b\u5f55\u540e\u91cd\u8bd5");
                return;
            }
        }
    }
}
