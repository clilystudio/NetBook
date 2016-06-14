package com.clilystudio.netbook.ui.user;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

final class y
        extends c<String, ResultStatus> {
    private /* synthetic */ MyFavTopicFragment a;

    public y(MyFavTopicFragment myFavTopicFragment, Activity activity, int n) {
        this.a = myFavTopicFragment;
        super(activity, 2131034218);
    }

    private static /* varargs */ ResultStatus a(String... arrstring) {
        try {
            b.a();
            ResultStatus resultStatus = b.b().z(arrstring[0], arrstring[1]);
            return resultStatus;
        } catch (IOException var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        ResultStatus resultStatus = (ResultStatus) object;
        if (resultStatus != null) {
            if (resultStatus.isOk()) {
                e.a(this.b(), "\u5220\u9664\u6210\u529f");
                MyFavTopicFragment.d(this.a).setRefreshing();
                return;
            }
            e.a(this.b(), "\u5220\u9664\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5");
            return;
        }
        e.a(this.b(), "\u5220\u9664\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
