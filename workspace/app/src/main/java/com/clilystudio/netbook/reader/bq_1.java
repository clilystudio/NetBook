package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a.b;
import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.model.TopicCount;

final class bq extends b {

    private ReaderActivity a;

    bq(ReaderActivity ReaderActivity1, byte byte2) {
        this(ReaderActivity1);
    }

    private bq(ReaderActivity ReaderActivity1) {
        a = ReaderActivity1;
    }

    protected final void a(TopicCount TopicCount1) {
        ReaderActivity.i(a, TopicCount1.getCount());
        ReaderActivity.j(a, ReaderActivity.af(a) - BookTopicEnterRecord.get(ReaderActivity.M(a)).getVisitCount());
        if (ReaderActivity.d(a) > 0)
            ReaderActivity.A(a).f(true);
        else
            ReaderActivity.A(a).f(false);
    }
}
