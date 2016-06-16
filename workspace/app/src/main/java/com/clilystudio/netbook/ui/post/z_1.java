package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Intent;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PostPublish;
import com.clilystudio.netbook.util.e;

final class z extends c<String, PostPublish> {
    private /* synthetic */ AddGirlTopicActivity a;

    public z(AddGirlTopicActivity addGirlTopicActivity, Activity activity, int n) {
        this.a = addGirlTopicActivity;
        super(activity, R.string.post_publish_loading);
    }

    private /* varargs */ PostPublish a(String... arrstring) {
        try {
            PostPublish postPublish = b.b().g(arrstring[0], arrstring[1], arrstring[2], "girl");
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
                e.a((Activity) this.a, "\u53d1\u5e03\u6210\u529f");
                Intent intent = new Intent(this.a, GirlTopicListActivity.class);
                this.a.startActivity(intent);
                return;
            }
            if ("TOKEN_INVALID".equals(postPublish.getCode())) {
                e.a((Activity) this.a, "\u8eab\u4efd\u8ba4\u8bc1\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u540e\u518d\u53d1\u5e03");
                return;
            }
            if ("LV_NOT_ENOUGH".equals(postPublish.getCode())) {
                e.a((Activity) this.a, "\u5f88\u62b1\u6b49\uff0c\u60a8\u7684\u7b49\u7ea7\u4e0d\u591f");
                return;
            }
            if ("FORBIDDEN".equals(postPublish.getCode())) {
                String string = postPublish.getMsg();
                if (string != null) {
                    e.a((Activity) this.a, string);
                    return;
                }
                e.a((Activity) this.a, R.string.forbidden_tips);
                return;
            }
            e.a((Activity) this.a, "\u53d1\u5e03\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5");
            return;
        }
        e.a((Activity) this.a, "\u53d1\u5e03\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u8005\u7a0d\u540e\u518d\u8bd5");
    }
}
