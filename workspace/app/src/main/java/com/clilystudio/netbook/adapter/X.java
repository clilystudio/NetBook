package com.clilystudio.netbook.adapter;

import android.view.LayoutInflater;

import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.util.t;
import com.clilystudio.netbook.widget.CoverView;

import java.util.Date;

public final class X extends W<UGCBookListRoot$UGCBook> {
    private String a = "\u5171%1$d\u672c\u4e66  |  %2$d\u4eba\u6536\u85cf";
    private String b = "\u5171%1$d\u672c\u4e66";

    public X(LayoutInflater layoutInflater) {
        super(layoutInflater, 2130903317);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        UGCBookListRoot$UGCBook uGCBookListRoot$UGCBook = (UGCBookListRoot$UGCBook) object;
        if (uGCBookListRoot$UGCBook == null) return;
        ((CoverView) this.a(0, CoverView.class)).setImageUrl(uGCBookListRoot$UGCBook.getFullCover(), 2130837766);
        this.a(1, uGCBookListRoot$UGCBook.getTitle());
        this.a(4, uGCBookListRoot$UGCBook.getDesc());
        if (uGCBookListRoot$UGCBook.isDraft()) {
            String string = this.b;
            Object[] arrobject = new Object[]{uGCBookListRoot$UGCBook.getBookCount()};
            this.a(2, String.format(string, arrobject));
            this.a(3, true);
            this.a(5, t.e((Date) uGCBookListRoot$UGCBook.getUpdated()));
            this.a(5, false);
            if (uGCBookListRoot$UGCBook.getBookCount() >= 8) {
                this.a(6, false);
                this.a(7, true);
                return;
            }
            this.a(6, true);
            this.a(7, false);
            return;
        }
        String string = this.a;
        Object[] arrobject = new Object[]{uGCBookListRoot$UGCBook.getBookCount(), uGCBookListRoot$UGCBook.getCollectorCount()};
        this.a(2, String.format(string, arrobject));
        this.a(3, uGCBookListRoot$UGCBook.getAuthor());
        this.a(3, false);
        this.a(5, true);
        this.a(6, true);
        this.a(7, true);
    }

    @Override
    protected final int[] a() {
        return new int[]{2131493604, 2131492936, 2131493239, 2131493317, 2131493481, 2131493783, 2131493785, 2131493786};
    }
}
