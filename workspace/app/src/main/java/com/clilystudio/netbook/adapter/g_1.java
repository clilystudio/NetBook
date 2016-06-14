package com.clilystudio.netbook.adapter;

import android.content.res.Resources;
import android.view.LayoutInflater;

import com.clilystudio.netbook.model.BookRankDetail;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;

public final class g extends W<BookRankDetail> {
    private Resources a;

    public g(LayoutInflater layoutInflater) {
        super(layoutInflater, 2130903293);
        this.a = layoutInflater.getContext().getResources();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        boolean bl = true;
        BookRankDetail bookRankDetail = (BookRankDetail) object;
        ((CoverView) this.a(0, CoverView.class)).setImageUrl(bookRankDetail.getFullCover(), 2130837766);
        this.a((int) bl ? 1 : 0, bookRankDetail.getTitle());
        this.a(2, bookRankDetail.getShortIntro());
        Resources resources = this.a;
        Object[] arrobject = new Object[bl];
        arrobject[0] = bookRankDetail.getLatelyFollower();
        this.a(3, resources.getString(2131034387, arrobject));
        Resources resources2 = this.a;
        Object[] arrobject2 = new Object[bl];
        arrobject2[0] = bookRankDetail.getRetentionRatio();
        this.a(4, resources2.getString(2131034470, arrobject2));
        boolean bl2 = bookRankDetail.getRetentionRatio() == null ? bl : false;
        this.a(4, bl2);
        if (bookRankDetail.getRetentionRatio() != null) {
            bl = false;
        }
        this.a(5, bl);
        this.a(6, bookRankDetail.getAuthor());
        this.a(7, bookRankDetail.getCat());
    }

    @Override
    protected final int[] a() {
        return new int[]{2131493616, 2131493605, 2131493617, 2131493717, 2131493719, 2131493718, 2131493715, 2131493716};
    }
}
