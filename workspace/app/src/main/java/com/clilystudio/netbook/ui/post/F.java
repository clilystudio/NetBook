package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Intent;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PostPublish;
import com.clilystudio.netbook.util.e;

final class F extends c<String, PostPublish> {
    private /* synthetic */ AddReviewContentActivity a;

    public F(AddReviewContentActivity addReviewContentActivity, Activity activity, int n) {
        this.a = addReviewContentActivity;
        super(activity, R.string.post_publish_loading);
    }

    private /* varargs */ PostPublish a(String... arrstring) {
        try {
            if (!AddReviewContentActivity.g(this.a)) {
                return b.b().a(arrstring[0], arrstring[1], arrstring[2], arrstring[3], arrstring[4], AddReviewContentActivity.h(this.a));
            }
            PostPublish postPublish = b.b().c(arrstring[0], arrstring[1], arrstring[2], arrstring[3], arrstring[4]);
            return postPublish;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final /* synthetic */ void a(Object object) {
        PostPublish postPublish = (PostPublish) object;
        if (postPublish == null) {
            e.a((Activity) this.a, (String) "\u53d1\u5e03\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u8005\u7a0d\u540e\u518d\u8bd5");
            return;
        }
        if (postPublish.isOk()) {
            e.a((Activity) this.a, (String) "\u53d1\u5e03\u6210\u529f");
            AddReviewContentActivity.i(this.a);
            if (!AddReviewContentActivity.g(this.a)) {
                Intent intent = AddReviewContentActivity.h(this.a) ? new Intent(this.a, BookPostTabActivity.class) : new Intent(this.a, ReviewListActivity.class);
                this.a.startActivity(intent);
            }
            this.a.setResult(256);
            this.a.finish();
            return;
        }
        if ("TOKEN_INVALID".equals(postPublish.getCode())) {
            this.a.d();
            return;
        }
        if ("LV_NOT_ENOUGH".equals(postPublish.getCode())) {
            e.a((Activity) this.a, (String) "\u5f88\u62b1\u6b49\uff0c\u60a8\u7684\u7b49\u7ea7\u4e0d\u591f");
            return;
        }
        if (!"FORBIDDEN".equals(postPublish.getCode())) {
            e.a((Activity) this.a, (String) "\u53d1\u5e03\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5");
            return;
        }
        String string = postPublish.getMsg();
        if (string != null) {
            e.a((Activity) this.a, (String) string);
            return;
        }
        e.a((Activity) this.a, (int) R.string.forbidden_tips);
    }
}
