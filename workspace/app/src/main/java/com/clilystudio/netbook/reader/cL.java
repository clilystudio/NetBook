package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a_pack.b;
import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.model.TopicCount;

final class cL
        extends b {
    private /* synthetic */ ReaderWebActivity a;

    private cL(ReaderWebActivity readerWebActivity) {
        this.a = readerWebActivity;
    }

    /* synthetic */ cL(ReaderWebActivity readerWebActivity, byte by) {
        this(readerWebActivity);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final void a(TopicCount topicCount) {
        int n = 99;
        ReaderWebActivity.a(this.a, topicCount.getCount());
        int n2 = ReaderWebActivity.d(this.a) - BookTopicEnterRecord.get(ReaderWebActivity.e(this.a)).getVisitCount();
        if (n2 <= 0) {
            ReaderWebActivity.a(this.a).a(false);
            return;
        }
        ReaderWebActivity.a(this.a).a(true);
        ReaderWebActionBar readerWebActionBar = ReaderWebActivity.a(this.a);
        if (n2 <= n) {
            n = n2;
        }
        readerWebActionBar.setTopicCount(String.valueOf(n));
    }
}
