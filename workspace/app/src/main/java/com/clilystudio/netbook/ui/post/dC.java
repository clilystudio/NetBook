package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.support.design.widget.am;

import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.db.RetweenRecord;
import com.clilystudio.netbook.model.PostPublish;
import com.clilystudio.netbook.util.e;

final class dC
        extends c<String, PostPublish> {
    private /* synthetic */ TweetDetailActivity a;

    public dC(TweetDetailActivity tweetDetailActivity, Activity activity, int n) {
        this.a = tweetDetailActivity;
        super(activity, 2131034473);
    }

    private /* varargs */ PostPublish a(String... arrstring) {
        try {
            PostPublish postPublish = b.b().m(arrstring[0], arrstring[1]);
            return postPublish;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        PostPublish postPublish = (PostPublish) object;
        if (postPublish != null && postPublish.isOk()) {
            e.a((Activity) this.a, (String) "\u8f6c\u53d1\u6210\u529f");
            TweetDetailActivity.e(this.a);
            RetweenRecord.save2DB(am.a((Activity) this.a).getUser().getId(), TweetDetailActivity.c(this.a).getTweet().get_id());
        }
    }
}
