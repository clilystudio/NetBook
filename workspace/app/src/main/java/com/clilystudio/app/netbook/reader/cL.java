package com.clilystudio.app.netbook.reader;

import com.clilystudio.app.netbook.a_packA.b;
import com.clilystudio.app.netbook.db.BookTopicEnterRecord;
import com.clilystudio.app.netbook.model.TopicCount;

final class cL extends b {
    private cL(ReaderWebActivity paramReaderWebActivity) {
    }

    protected final void a(TopicCount paramTopicCount) {
        int i = 99;
        ReaderWebActivity.a(this.a, paramTopicCount.getCount());
        int j = ReaderWebActivity.d(this.a) - BookTopicEnterRecord.get(ReaderWebActivity.e(this.a)).getVisitCount();
        if (j > 0) {
            ReaderWebActivity.a(this.a).a(true);
            ReaderWebActionBar localReaderWebActionBar = ReaderWebActivity.a(this.a);
            if (j > i) ;
            while (true) {
                localReaderWebActionBar.setTopicCount(String.valueOf(i));
                return;
                i = j;
            }
        }
        ReaderWebActivity.a(this.a).a(false);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.cL
 * JD-Core Version:    0.6.2
 */