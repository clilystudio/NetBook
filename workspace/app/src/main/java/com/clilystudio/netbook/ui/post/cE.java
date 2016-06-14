package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ReviewResult;

final class cE
        extends e<String, Void, ReviewResult> {
    private /* synthetic */ ReviewActivity a;

    private cE(ReviewActivity reviewActivity) {
        this.a = reviewActivity;
    }

    /* synthetic */ cE(ReviewActivity reviewActivity, byte by) {
        this(reviewActivity);
    }

    private /* varargs */ ReviewResult a(String... arrstring) {
        try {
            ReviewResult reviewResult = b.b().D(arrstring[0]);
            return reviewResult;
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
        ReviewResult reviewResult = (ReviewResult) object;
        super.onPostExecute(reviewResult);
        if (reviewResult != null && reviewResult.getReview() != null) {
            this.a.f();
            ReviewActivity.a(this.a, reviewResult.getReview());
            ReviewActivity.b(this.a, ReviewActivity.h(this.a));
            ReviewActivity.b(this.a);
            return;
        }
        this.a.h();
    }
}
