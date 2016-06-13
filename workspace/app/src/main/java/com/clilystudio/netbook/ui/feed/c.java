package com.clilystudio.netbook.ui.feed;

import android.view.LayoutInflater;
import android.widget.CheckBox;

import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;

final class c
        extends W<BookReadRecord> {
    private /* synthetic */ FeedAddActivity a;

    public c(FeedAddActivity feedAddActivity, LayoutInflater layoutInflater) {
        this.a = feedAddActivity;
        super(layoutInflater, 2130903274);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        BookReadRecord bookReadRecord = (BookReadRecord) object;
        ((CoverView) this.a(0, CoverView.class)).setImageUrl(bookReadRecord.getFullCover(), 2130837766);
        this.a(1, bookReadRecord.getTitle());
        CheckBox checkBox = (CheckBox) this.a(2, CheckBox.class);
        checkBox.setChecked(false);
        BookReadRecord bookReadRecord2 = (BookReadRecord) FeedAddActivity.b(this.a).getItem(n);
        int n2 = 0;
        while (n2 < FeedAddActivity.c(this.a).size()) {
            if (FeedAddActivity.c(this.a).contains(bookReadRecord2)) {
                checkBox.setChecked(true);
            } else {
                checkBox.setChecked(false);
            }
            ++n2;
        }
    }

    @Override
    protected final int[] a() {
        return new int[]{2131493648, 2131493649, 2131493650};
    }
}
