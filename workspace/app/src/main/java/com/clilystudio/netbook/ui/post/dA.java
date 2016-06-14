package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.db.VoteRecord;
import com.clilystudio.netbook.model.VoteResult;
import com.clilystudio.netbook.util.e;

final class dA
        extends c<String, VoteResult> {
    private /* synthetic */ TweetDetailActivity a;

    public dA(TweetDetailActivity tweetDetailActivity, Activity activity, int n) {
        this.a = tweetDetailActivity;
        super(activity, 2131034584);
    }

    private /* varargs */ VoteResult a(String... arrstring) {
        try {
            VoteResult voteResult = b.b().a(arrstring[0], arrstring[1], arrstring[2]);
            return voteResult;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        VoteResult voteResult = (VoteResult) object;
        if (voteResult != null) {
            if (voteResult.isOk()) {
                TweetDetailActivity.a(this.a, TweetDetailActivity.d(this.a), false);
                e.a((Activity) this.a, (String) "\u6210\u529f");
                VoteRecord.create(TweetDetailActivity.b(this.a).getUser().getId(), TweetDetailActivity.c(this.a).getTweet().get_id(), TweetDetailActivity.d(this.a));
                return;
            }
            if ("ALREADY_VOTED".equals(voteResult.getCode())) {
                int n = voteResult.getSelected();
                TweetDetailActivity.a(this.a, n, false);
                VoteRecord.create(TweetDetailActivity.b(this.a).getUser().getId(), TweetDetailActivity.c(this.a).getTweet().get_id(), n);
                e.a((Activity) this.a, (String) "\u60a8\u5df2\u7ecf\u6295\u8fc7\u5566");
                return;
            }
            if ("FORBIDDEN".equals(voteResult.getCode())) {
                String string = voteResult.getMsg();
                if (string != null) {
                    e.a((Activity) this.a, (String) string);
                    return;
                }
                e.a((Activity) this.a, (int) 2131034388);
                return;
            }
            e.a((Activity) this.a, (String) "\u6295\u7968\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5");
            return;
        }
        e.a((Activity) this.a, (String) "\u6295\u7968\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
