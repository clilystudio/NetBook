package com.clilystudio.netbook.adapter;

import android.view.LayoutInflater;

import com.clilystudio.netbook.model.UGCBookDetail;
import com.clilystudio.netbook.widget.CoverView;

public final class W extends com.clilystudio.netbook.util.W<UGCBookDetail.UGCBookContainer> {
    public W(LayoutInflater layoutInflater) {
        super(layoutInflater, R.layout.list_item_ugcbook_detail);
    }

    @Override
    protected final /* synthetic */ void a(int n, UGCBookDetail.UGCBookContainer object) {
        UGCBookDetail.UGCBookContainer.UGCBookItem ugcBookItem;
        if (object.getComment() != null && object.getComment().trim().length() > 6) {
            this.a(2, object.getComment());
            this.a(7, false);
        } else {
            this.a(7, true);
        }
        if ((ugcBookItem = object.getBook()) != null) {
            this.a(0, ugcBookItem.getTitle());
            this.a(1, String.valueOf(ugcBookItem.getLatelyFollower()));
            this.a(3, CoverView.class).setImageUrl(ugcBookItem.getFullCover(), R.drawable.cover_default);
            this.a(4, ugcBookItem.getAuthor());
            long l = ugcBookItem.getWordCount();
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
        return new int[]{R.id.title, R.id.message_count, R.id.desc, R.id.avatar, R.id.author, R.id.message_textcount, R.id.message_textunit, R.id.desc_layout, R.id.message_separate};
    }
}
