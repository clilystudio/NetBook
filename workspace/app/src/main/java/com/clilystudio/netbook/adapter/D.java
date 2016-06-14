package com.clilystudio.netbook.adapter;

import android.view.LayoutInflater;

import com.clilystudio.netbook.model.ReviewSummary;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.CoverView;
import com.clilystudio.netbook.widget.PostFlag;

import java.util.Date;

public final class D extends W<ReviewSummary> {
    public D(LayoutInflater layoutInflater) {
        super(layoutInflater, 2130903301);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        ReviewSummary reviewSummary = (ReviewSummary) object;
        ((CoverView) this.a(0, CoverView.class)).setImageUrl(reviewSummary.getBook().getFullCover(), 2130837766);
        this.a(1, reviewSummary.getBook().getTitle());
        this.a(4, reviewSummary.getTitle());
        Object[] arrobject = new Object[]{reviewSummary.getHelpful().getYes()};
        this.a(5, String.format("%d \u4eba\u63a8\u8350", arrobject));
        String string = reviewSummary.getBook().getType();
        if (string == null) {
            string = "";
        }
        String string2 = string.equals("xhqh") ? "\u7384\u5e7b\u5947\u5e7b" : (string.equals("wxxx") ? "\u6b66\u4fa0\u4ed9\u4fa0" : (string.equals("dsyn") ? "\u90fd\u5e02\u5f02\u80fd" : (string.equals("lsjs") ? "\u5386\u53f2\u519b\u4e8b" : (string.equals("yxjj") ? "\u6e38\u620f\u7ade\u6280" : (string.equals("khly") ? "\u79d1\u5e7b\u7075\u5f02" : (string.equals("cyjk") ? "\u7a7f\u8d8a\u67b6\u7a7a" : (string.equals("hmzc") ? "\u8c6a\u95e8\u603b\u88c1" : (string.equals("xdyq") ? "\u73b0\u4ee3\u8a00\u60c5" : (string.equals("gdyq") ? "\u53e4\u4ee3\u8a00\u60c5" : (string.equals("hxyq") ? "\u5e7b\u60f3\u8a00\u60c5" : (string.equals("dmtr") ? "\u803d\u7f8e\u540c\u4eba" : "\u5176\u4ed6")))))))))));
        this.a(2, "[" + string2 + "]");
        String string3 = reviewSummary.getState();
        PostFlag postFlag = (PostFlag) this.a(6, PostFlag.class);
        if (postFlag.a(string3)) {
            postFlag.setVisibility(0);
            this.a(3, true);
            return;
        }
        postFlag.setVisibility(8);
        this.a(3, false);
        this.a(3, t.e((Date) reviewSummary.getCreated()));
    }

    @Override
    protected final int[] a() {
        return new int[]{2131493744, 2131493745, 2131493746, 2131493747, 2131493748, 2131493749, 2131493632};
    }
}
