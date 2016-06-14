package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Review;
import com.clilystudio.netbook.model.ReviewHistory;

import java.io.IOException;

final class aG
        extends c<String, Review> {
    private /* synthetic */ BookReviewListFragment a;

    public aG(BookReviewListFragment bookReviewListFragment, Activity activity) {
        this.a = bookReviewListFragment;
        super(activity, "\u6b63\u5728\u83b7\u53d6\u5386\u53f2\u4e66\u8bc4...");
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static Review a(String[] arrstring) {
        b.a();
        ReviewHistory reviewHistory = b.b().q(arrstring[0], arrstring[1]);
        if (reviewHistory == null) return null;
        try {
            if (!reviewHistory.ok) return null;
            return reviewHistory.review;
        } catch (IOException var1_3) {
            var1_3.printStackTrace();
        }
        return null;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public final /* synthetic */ void a(Object object) {
        Review review = (Review) object;
        if (this.b() == null) return;
        if (review != null) {
            BookReviewListFragment.b(this.a, review);
            return;
        }
        MyApplication.a().a(new String[]{"saveToLocalReviewTitle", "saveToLocalReviewDesc"});
        BookReviewListFragment.f(this.a);
    }
}
