package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a_pack.b;
import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.model.TopicCount;

final class bq
        extends b {
    private /* synthetic */ ReaderActivity a;

    private bq(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    /* synthetic */ bq(ReaderActivity readerActivity, byte by) {
        this(readerActivity);
    }

    @Override
    protected final void a(TopicCount topicCount) {
        ReaderActivity.i(this.a, topicCount.getCount());
        ReaderActivity.j(this.a, ReaderActivity.af(this.a) - BookTopicEnterRecord.get(ReaderActivity.M(this.a)).getVisitCount());
        if (ReaderActivity.d(this.a) > 0) {
            ReaderActivity.A(this.a).f(true);
            return;
        }
        ReaderActivity.A(this.a).f(false);
    }
}
