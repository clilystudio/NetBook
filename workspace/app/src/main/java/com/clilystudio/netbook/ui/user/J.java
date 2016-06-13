package com.clilystudio.netbook.ui.user;

import android.content.Context;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.s;
import com.clilystudio.netbook.model.UserVipInfo;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Locale;

final class J
        extends e<String, Void, UserVipInfo> {
    private /* synthetic */ PayAccountActivity a;

    J(PayAccountActivity payAccountActivity) {
        this.a = payAccountActivity;
    }

    private /* varargs */ UserVipInfo a(String... arrstring) {
        try {
            UserVipInfo userVipInfo = b.b().O(arrstring[0]);
            return userVipInfo;
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
        UserVipInfo userVipInfo = (UserVipInfo) object;
        super.onPostExecute(userVipInfo);
        if (userVipInfo != null && userVipInfo.isOk()) {
            if (PayAccountActivity.d(this.a) != null) {
                if (userVipInfo.getDueInMs() > 0) {
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.CHINA);
                    PayAccountActivity.d(this.a).setText("\u622a\u6b62\u81f3" + simpleDateFormat.format(userVipInfo.getVipExpire()));
                    PayAccountActivity.d(this.a).setVisibility(0);
                } else {
                    PayAccountActivity.d(this.a).setVisibility(8);
                }
            }
            a.b((Context) this.a, "remove_ad_duration", userVipInfo.getDueInMs());
            i.a().c(new s());
        }
    }
}
