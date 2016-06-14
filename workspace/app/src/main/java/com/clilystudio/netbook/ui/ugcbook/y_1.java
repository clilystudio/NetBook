package com.clilystudio.netbook.ui.ugcbook;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;

import java.util.Iterator;
import java.util.List;

public final class y extends W<BookSummary> {
    final /* synthetic */ UGCGuideAddBookActivity a;
    private final List<BookSummary> b;

    public y(UGCGuideAddBookActivity uGCGuideAddBookActivity, LayoutInflater layoutInflater) {
        this.a = uGCGuideAddBookActivity;
        super(layoutInflater, 2130903411);
        this.b = UGCGuideAddBookActivity.b(uGCGuideAddBookActivity).getBooks();
    }

    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        BookSummary bookSummary = (BookSummary) object;
        if (this.b != null) {
            Iterator<BookSummary> iterator = this.b.iterator();
            while (iterator.hasNext()) {
                if (!iterator.next().getId().equals(bookSummary.getId())) continue;
                UGCGuideAddBookActivity.a(this.a, n);
            }
        }
        try {
            ((CoverView) this.a(0, CoverView.class)).setImageUrl(bookSummary.getFullCover(), 2130837766);
            this.a(1, bookSummary.getTitle());
            Object[] arrobject = new Object[]{bookSummary.getLatelyFollower(), Float.valueOf(bookSummary.getRetentionRatio()), bookSummary.getAuthor()};
            this.a(2, String.format("%d\u4eba\u5728\u8ffd  |  %.1f%%\u8bfb\u8005\u7559\u5b58  |  %s\u8457", arrobject));
            this.a(3, TextUtils.isEmpty(bookSummary.getPromLink()));
            if (bookSummary.isSelected()) {
                this.a(4, true);
                this.a(5, false);
                return;
            }
            this.a(4, false);
            this.a(5, true);
            return;
        } catch (Throwable var4_6) {
            var4_6.printStackTrace();
            return;
        }
    }

    @Override
    protected final int[] a() {
        return new int[]{2131493616, 2131493605, 2131493617, 2131493753, 2131494021, 2131494022};
    }

    @Override
    public final View getView(int n, View view, ViewGroup viewGroup) {
        View view2 = super.getView(n, view, viewGroup);
        ((Button) view2.findViewById(2131494021)).setOnClickListener(new z(this, n));
        this.a(n, view2, this.getItem(n));
        return view2;
    }
}
