package com.clilystudio.netbook.ui.home;

import android.content.Context;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.s;
import com.clilystudio.netbook.model.UserVipInfo;

import java.io.IOException;

final class h extends e<String, Void, UserVipInfo> {
    private /* synthetic */ HomeActivity a;

    h(HomeActivity homeActivity) {
        this.a = homeActivity;
    }

    private /* varargs */ UserVipInfo a(String... arrstring) {
        try {
            HomeActivity.f(this.a);
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

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        UserVipInfo userVipInfo = (UserVipInfo) object;
        super.onPostExecute(userVipInfo);
        if (userVipInfo != null && userVipInfo.isOk()) {
            a.b((Context) this.a, "remove_ad_duration", userVipInfo.getDueInMs());
            if (userVipInfo.getDueInMs() > 0) {
                i.a().c(new s());
            }
        }
    }
}
