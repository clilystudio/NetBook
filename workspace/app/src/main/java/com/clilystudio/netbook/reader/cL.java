package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.a.b;
import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.model.TopicCount;

final class cL extends b {

    private ReaderWebActivity a;

    cL(ReaderWebActivity ReaderWebActivity1, byte byte2) {
        this(ReaderWebActivity1);
    }

    private cL(ReaderWebActivity ReaderWebActivity1) {
        a = ReaderWebActivity1;
    }

    protected final void a(TopicCount TopicCount1) {
        int int2 = 99;
        int int4;

        ReaderWebActivity.a(a, TopicCount1.getCount());
        int4 = ReaderWebActivity.d(a) - BookTopicEnterRecord.get(ReaderWebActivity.e(a)).getVisitCount();
        if (int4 > 0) {
            ReaderWebActionBar ReaderWebActionBar5;

            ReaderWebActivity.a(a).a(true);
            ReaderWebActionBar5 = ReaderWebActivity.a(a);
            if (int4 <= int2)
                int2 = int4;
            ReaderWebActionBar5.setTopicCount(String.valueOf(int2));
        } else
            ReaderWebActivity.a(a).a(false);
    }
}
