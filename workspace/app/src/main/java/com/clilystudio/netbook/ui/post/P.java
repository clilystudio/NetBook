package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Intent;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PostPublish;
import com.clilystudio.netbook.util.e;

final class P extends c<String, PostPublish> {
    private /* synthetic */ AddVoteActivity a;

    public P(AddVoteActivity addVoteActivity, Activity activity, int n) {
        this.a = addVoteActivity;
        super(activity, R.string.post_publish_loading);
    }

    private /* varargs */ PostPublish a(String... arrstring) {
        try {
            switch (AddVoteActivity.d(this.a)) {
                default: {
                    return b.b().g(arrstring[0], arrstring[2], arrstring[3], AddVoteActivity.e(this.a));
                }
                case 0: {
                    return b.b().e(arrstring[0], arrstring[1], arrstring[2], arrstring[3]);
                }
                case 3: {
                    return b.b().j(arrstring[0], arrstring[3]);
                }
                case 4: {
                    return b.b().b(arrstring[0], arrstring[2], arrstring[3]);
                }
                case 5:
            }
            PostPublish postPublish = b.b().g(arrstring[0], arrstring[2], arrstring[3], AddVoteActivity.e(this.a));
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
            e.a((Activity) this.a, (String) "\u53d1\u5e03\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
            return;
        }
        if (postPublish.isOk()) {
            e.a((Activity) this.a, (String) "\u53d1\u5e03\u6210\u529f");
            Intent intent = AddVoteActivity.d(this.a) == 0 ? BookPostTabActivity.a(this.a, AddVoteActivity.c(this.a), AddVoteActivity.f(this.a), AddVoteActivity.g(this.a)) : (AddVoteActivity.d(this.a) == 3 || AddVoteActivity.d(this.a) == 4 ? TweetTabActivity.a(this.a) : (AddVoteActivity.d(this.a) == 5 ? new Intent(this.a, GirlTopicListActivity.class) : new Intent(this.a, CommonPostListActivity.class)));
            this.a.startActivity(intent);
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
