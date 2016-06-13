package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ReviewList;
import com.clilystudio.netbook.model.ReviewSummary;
import com.clilystudio.netbook.util.e;

import java.util.Arrays;
import java.util.List;

final class dp
        extends com.clilystudio.netbook.a.e<String, Void, ReviewList> {
    private /* synthetic */ ReviewListActivity a;

    private dp(ReviewListActivity reviewListActivity) {
        this.a = reviewListActivity;
    }

    /* synthetic */ dp(ReviewListActivity reviewListActivity, byte by) {
        this(reviewListActivity);
    }

    private /* varargs */ ReviewList a(String... arrstring) {
        try {
            ReviewListActivity.q(this.a);
            ReviewList reviewList = b.b().a(arrstring[0], arrstring[1], arrstring[2], 0, 20, ReviewListActivity.p(this.a));
            return reviewList;
        } catch (Exception var2_3) {
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
        ReviewList reviewList = (ReviewList) object;
        super.onPostExecute(reviewList);
        ReviewListActivity.e(this.a).setVisibility(8);
        ReviewListActivity.r(this.a).setVisibility(8);
        ReviewListActivity.s(this.a).setVisibility(8);
        ReviewListActivity.n(this.a).n();
        if (reviewList != null && reviewList.getReviews() != null) {
            ReviewListActivity.l(this.a).clear();
            ReviewSummary[] arrreviewSummary = reviewList.getReviews();
            int n = arrreviewSummary.length;
            if (n > 0) {
                List<ReviewSummary> list = Arrays.asList(arrreviewSummary);
                ReviewListActivity.l(this.a).addAll(list);
                ReviewListActivity.t(this.a).a(ReviewListActivity.l(this.a));
                if (n < 20) {
                    ReviewListActivity.n(this.a).setOnLastItemVisibleListener(null);
                    return;
                }
                ReviewListActivity.n(this.a).setOnLastItemVisibleListener(ReviewListActivity.u(this.a));
                return;
            }
            ReviewListActivity.v(this.a);
            return;
        }
        e.a((Activity) this.a, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
