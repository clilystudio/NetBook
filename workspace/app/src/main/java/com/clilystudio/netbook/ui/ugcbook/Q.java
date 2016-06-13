package com.clilystudio.netbook.ui.ugcbook;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;

final class Q
        extends W<BookSummary> {
    final /* synthetic */ UGCGuideEditBooksActivity a;

    public Q(UGCGuideEditBooksActivity uGCGuideEditBooksActivity, LayoutInflater layoutInflater, int n) {
        this.a = uGCGuideEditBooksActivity;
        super(layoutInflater, 2130903316);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        BookSummary bookSummary = (BookSummary) object;
        ((CoverView) this.a(0, CoverView.class)).setImageUrl(bookSummary.getFullCover(), 2130837766);
        this.a(1, bookSummary.getTitle());
        this.a(2, bookSummary.getAuthor());
        this.a(3, "" + bookSummary.getLatelyFollower());
        long l = bookSummary.getWordCount();
        if (l > 0) {
            String string = " \u5b57";
            if (l > 10000) {
                l /= 10000;
                string = " \u4e07\u5b57";
            } else if (l > 100) {
                l /= 100;
                string = " \u767e\u5b57";
            }
            this.a(4, "" + l);
            this.a(5, string);
            this.a(4, false);
            this.a(5, false);
            this.a(9, false);
        } else {
            this.a(4, true);
            this.a(5, true);
            this.a(9, true);
        }
        if (bookSummary.getAppendComment() != null && bookSummary.getAppendComment().trim().length() > 0) {
            this.a(6, bookSummary.getAppendComment());
            this.a(7, true);
            this.a(8, false);
            return;
        }
        this.a(7, false);
        this.a(8, true);
    }

    @Override
    protected final int[] a() {
        return new int[]{2131492899, 2131492936, 2131493317, 2131493775, 2131493776, 2131493777, 2131493780, 2131493778, 2131493779, 2131493411};
    }

    @Override
    public final View getView(int n, View view, ViewGroup viewGroup) {
        View view2 = super.getView(n, view, viewGroup);
        view2.findViewById(2131493781).setOnClickListener(new R(this, n));
        view2.findViewById(2131493778).setOnClickListener(new S(this, n));
        view2.findViewById(2131493782).setOnClickListener(new T(this, n));
        this.a(n, view2, this.getItem(n));
        return view2;
    }
}
