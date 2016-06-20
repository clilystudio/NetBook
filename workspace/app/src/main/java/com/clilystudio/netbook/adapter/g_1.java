package com.clilystudio.netbook.adapter;

import android.content.res.Resources;
import android.view.LayoutInflater;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.BookRankDetail;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;

public final class g extends W<BookRankDetail> {
    private Resources a;

    public g(LayoutInflater layoutInflater) {
        super(layoutInflater, R.layout.list_item_ori_book);
        this.a = layoutInflater.getContext().getResources();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n, BookRankDetail bookRankDetail) {
        boolean bl = true;
        ((CoverView) this.a(0, CoverView.class)).setImageUrl(bookRankDetail.getFullCover(), R.drawable.cover_default);
        this.a((int) bl ? 1 : 0, bookRankDetail.getTitle());
        this.a(2, bookRankDetail.getShortIntro());
        Resources resources = this.a;
        Object[] arrobject = new Object[bl];
        arrobject[0] = bookRankDetail.getLatelyFollower();
        this.a(3, resources.getString(R.string.follower_count_format, arrobject));
        Resources resources2 = this.a;
        Object[] arrobject2 = new Object[bl];
        arrobject2[0] = bookRankDetail.getRetentionRatio();
        this.a(4, resources2.getString(R.string.retention_ratio_format, arrobject2));
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
        return new int[]{R.id.iv_cover, R.id.tv_title, R.id.tv_short_intro, R.id.tv_follower_count, R.id.tv_retention_ratio, R.id.tv_retention_separate, R.id.tv_author, R.id.tv_category};
    }
}
