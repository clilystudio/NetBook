package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Intent;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PostPublish;
import com.clilystudio.netbook.util.e;

final class Z
        extends c<String, PostPublish> {
    private /* synthetic */ AddVoteItemActivity a;

    public Z(AddVoteItemActivity addVoteItemActivity, Activity activity, int n) {
        this.a = addVoteItemActivity;
        super(activity, 2131034430);
    }

    private /* varargs */ PostPublish a(String... arrstring) {
        try {
            if (AddVoteItemActivity.e(this.a) == 0) {
                return b.b().b(arrstring[0], arrstring[1], arrstring[2], arrstring[3], arrstring[4]);
            }
            if (AddVoteItemActivity.e(this.a) == 3) {
                return b.b().c(arrstring[0], arrstring[2], arrstring[3], arrstring[4]);
            }
            PostPublish postPublish = b.b().d(arrstring[0], arrstring[2], arrstring[3], arrstring[4]);
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
            if (AddVoteItemActivity.e(this.a) == 0) {
                AddVoteItemActivity.f(this.a);
                return;
            }
            if (AddVoteItemActivity.e(this.a) == 3) {
                Intent intent = new Intent(this.a, GirlTopicListActivity.class);
                this.a.startActivity(intent);
                return;
            }
            AddVoteItemActivity.g(this.a);
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
        if ("SHUAPOST".equals(postPublish.getCode())) {
            e.a((Activity) this.a, (String) "\u60a8\u53d1\u8d77\u6295\u7968\u7684\u9891\u7387\u592a\u9ad8\u5566,\u8bf7\u6b47\u4e00\u6b47\uff5e");
            return;
        }
        if (!"FORBIDDEN".equals(postPublish.getCode())) return;
        {
            String string = postPublish.getMsg();
            if (string != null) {
                e.a((Activity) this.a, (String) string);
                return;
            }
        }
        e.a((Activity) this.a, (int) 2131034388);
    }
}
