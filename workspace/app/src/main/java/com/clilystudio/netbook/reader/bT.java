package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a_pack.b;
import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.model.TopicCount;

final class bT extends b {
    private /* synthetic */ ReaderResActivity a;

    private bT(ReaderResActivity readerResActivity) {
        this.a = readerResActivity;
    }

    /* synthetic */ bT(ReaderResActivity readerResActivity, byte by) {
        this(readerResActivity);
    }

    @Override
    protected final void a(TopicCount topicCount) {
        ReaderResActivity.a(this.a, topicCount.getCount());
        if (Math.max(0, ReaderResActivity.a(this.a) - BookTopicEnterRecord.get(this.a.b).getVisitCount()) == 0) {
            ReaderResActivity.b(this.a).setVisibility(4);
            return;
        }
        ReaderResActivity.b(this.a).setVisibility(0);
    }
}
