package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.model.TopicCount;

final class bT extends com.clilystudio.netbook.a.b {

    private ReaderResActivity a;

    bT(ReaderResActivity ReaderResActivity1, byte byte2) {
        this(ReaderResActivity1);
    }

    private bT(ReaderResActivity ReaderResActivity1) {
        a = ReaderResActivity1;
    }

    protected final void a(TopicCount TopicCount1) {
        ReaderResActivity.a(a, TopicCount1.getCount());
        if (Math.max(0, ReaderResActivity.a(a) - BookTopicEnterRecord.get(a.b).getVisitCount()) == 0)
            ReaderResActivity.b(a).setVisibility(4);
        else
            ReaderResActivity.b(a).setVisibility(0);
    }
}
