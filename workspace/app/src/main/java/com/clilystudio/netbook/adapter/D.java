package com.clilystudio.netbook.adapter;

import android.view.LayoutInflater;
import android.view.View;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.ReviewSummary;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.CoverView;
import com.clilystudio.netbook.widget.PostFlag;

import java.util.Date;

public final class D extends W<ReviewSummary> {
    public D(LayoutInflater layoutInflater) {
        super(layoutInflater, R.layout.list_item_review);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n, ReviewSummary object) {
        ReviewSummary reviewSummary = (ReviewSummary) object;
        ((CoverView) this.a(0, CoverView.class)).setImageUrl(reviewSummary.getBook().getFullCover(), R.drawable.cover_default);
        this.a(1, reviewSummary.getBook().getTitle());
        this.a(4, reviewSummary.getTitle());
        Object[] arrobject = new Object[]{reviewSummary.getHelpful().getYes()};
        this.a(5, String.format("%d 人推荐", arrobject));
        String string = reviewSummary.getBook().getType();
        if (string == null) {
            string = "";
        }
        String string2 = string.equals("xhqh") ? "\u7384\u5e7b\u5947\u5e7b" : (string.equals("wxxx") ? "\u6b66\u4fa0\u4ed9\u4fa0" : (string.equals("dsyn") ? "\u90fd\u5e02\u5f02\u80fd" : (string.equals("lsjs") ? "\u5386\u53f2\u519b\u4e8b" : (string.equals("yxjj") ? "\u6e38\u620f\u7ade\u6280" : (string.equals("khly") ? "\u79d1\u5e7b\u7075\u5f02" : (string.equals("cyjk") ? "\u7a7f\u8d8a\u67b6\u7a7a" : (string.equals("hmzc") ? "\u8c6a\u95e8\u603b\u88c1" : (string.equals("xdyq") ? "\u73b0\u4ee3\u8a00\u60c5" : (string.equals("gdyq") ? "\u53e4\u4ee3\u8a00\u60c5" : (string.equals("hxyq") ? "\u5e7b\u60f3\u8a00\u60c5" : (string.equals("dmtr") ? "\u803d\u7f8e\u540c\u4eba" : "\u5176\u4ed6")))))))))));
        this.a(2, "[" + string2 + "]");
        String string3 = reviewSummary.getState();
        PostFlag postFlag = (PostFlag) this.a(6, PostFlag.class);
        if (postFlag.a(string3)) {
            postFlag.setVisibility(View.VISIBLE);
            this.a(3, true);
            return;
        }
        postFlag.setVisibility(View.GONE);
        this.a(3, false);
        this.a(3, t.e((Date) reviewSummary.getCreated()));
    }

    @Override
    protected final int[] a() {
        return new int[]{R.id.book_review_listitem_cover, R.id.book_review_listitem_book, R.id.book_review_listitem_type, R.id.book_review_listitem_time, R.id.book_review_listitem_title, R.id.support_percentage, R.id.post_flag};
    }
}
