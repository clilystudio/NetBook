package com.clilystudio.netbook.adapter;

import android.view.LayoutInflater;

import com.clilystudio.netbook.model.UGCBookDetail$UGCBookContainer;
import com.clilystudio.netbook.model.UGCBookDetail$UGCBookContainer$UGCBookItem;
import com.clilystudio.netbook.widget.CoverView;

public final class W
        extends com.clilystudio.netbook.util.W<UGCBookDetail$UGCBookContainer> {
    public W(LayoutInflater layoutInflater) {
        super(layoutInflater, 2130903319);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        UGCBookDetail$UGCBookContainer$UGCBookItem uGCBookDetail$UGCBookContainer$UGCBookItem;
        UGCBookDetail$UGCBookContainer uGCBookDetail$UGCBookContainer = (UGCBookDetail$UGCBookContainer) object;
        if (uGCBookDetail$UGCBookContainer.getComment() != null && uGCBookDetail$UGCBookContainer.getComment().trim().length() > 6) {
            this.a(2, uGCBookDetail$UGCBookContainer.getComment());
            this.a(7, false);
        } else {
            this.a(7, true);
        }
        if ((uGCBookDetail$UGCBookContainer$UGCBookItem = uGCBookDetail$UGCBookContainer.getBook()) != null) {
            this.a(0, uGCBookDetail$UGCBookContainer$UGCBookItem.getTitle());
            this.a(1, String.valueOf(uGCBookDetail$UGCBookContainer$UGCBookItem.getLatelyFollower()));
            ((CoverView) this.a(3, CoverView.class)).setImageUrl(uGCBookDetail$UGCBookContainer$UGCBookItem.getFullCover(), 2130837766);
            this.a(4, uGCBookDetail$UGCBookContainer$UGCBookItem.getAuthor());
            long l = uGCBookDetail$UGCBookContainer$UGCBookItem.getWordCount();
            if (l <= 0) {
                this.a(5, true);
                this.a(6, true);
                this.a(8, true);
                return;
            }
            String string = " \u5b57";
            if (l > 10000) {
                l /= 10000;
                string = " \u4e07\u5b57";
            } else if (l > 100) {
                l /= 100;
                string = " \u767e\u5b57";
            }
            this.a(5, "" + l);
            this.a(6, string);
            this.a(5, false);
            this.a(6, false);
            this.a(8, false);
        }
    }

    @Override
    protected final int[] a() {
        return new int[]{2131492936, 2131493239, 2131493481, 2131492899, 2131493317, 2131493790, 2131493791, 2131493792, 2131493789};
    }
}
