package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PostPublish;
import com.clilystudio.netbook.util.e;

final class cI
        extends c<String, PostPublish> {
    private /* synthetic */ ReviewActivity a;

    public cI(ReviewActivity reviewActivity, Activity activity, int n) {
        this.a = reviewActivity;
        super(activity, 2131034430);
    }

    private /* varargs */ PostPublish a(String... arrstring) {
        try {
            PostPublish postPublish = b.b().c(arrstring[0], arrstring[1], arrstring[2]);
            return postPublish;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        PostPublish postPublish = (PostPublish) object;
        if (postPublish != null) {
            if (postPublish.isOk()) {
                e.a((Activity) this.a, (String) "\u53d1\u5e03\u6210\u529f");
                ReviewActivity.a(this.a);
                ReviewActivity.b(this.a);
                return;
            }
            if ("TOKEN_INVALID".equals(postPublish.getCode())) {
                this.a.d();
                return;
            }
            if ("FORBIDDEN".equals(postPublish.getCode())) {
                String string = postPublish.getMsg();
                if (string != null) {
                    e.a((Activity) this.a, (String) string);
                    return;
                }
                e.a((Activity) this.a, (int) 2131034388);
                return;
            }
            e.a((Activity) this.a, (String) "\u53d1\u5e03\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5");
            return;
        }
        e.a((Activity) this.a, (String) "\u53d1\u5e03\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
