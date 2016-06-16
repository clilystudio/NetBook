package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PostPublish;
import com.clilystudio.netbook.util.e;

final class dB extends c<String, PostPublish> {
    private /* synthetic */ TweetDetailActivity a;

    public dB(TweetDetailActivity tweetDetailActivity, Activity activity, int n) {
        this.a = tweetDetailActivity;
        super(activity, R.string.post_publish_loading);
    }

    private /* varargs */ PostPublish a(String... arrstring) {
        try {
            PostPublish postPublish = b.b().a(arrstring[0], arrstring[1], arrstring[2], arrstring[3]);
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
                TweetDetailActivity.a(this.a, postPublish.get_id());
                this.a.o();
                TweetDetailActivity.f(this.a);
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
                e.a((Activity) this.a, (int) R.string.forbidden_tips);
                return;
            }
            if ("HAS_BAN_KEYWORDS".equals(postPublish.getCode())) {
                String string = postPublish.getMsg();
                if (string != null) {
                    e.a((Activity) this.a, (String) string);
                    return;
                }
                e.a((Activity) this.a, (String) "\u4e0d\u826f\u5185\u5bb9, ");
                return;
            }
            e.a((Activity) this.a, (String) "\u53d1\u5e03\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5");
            return;
        }
        e.a((Activity) this.a, (String) "\u53d1\u5e03\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
