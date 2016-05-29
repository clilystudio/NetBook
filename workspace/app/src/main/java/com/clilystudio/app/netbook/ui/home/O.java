package com.clilystudio.app.netbook.ui.home;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.db.BookReadRecord;
import com.clilystudio.app.netbook.model.TopicSummary;

import java.util.List;

final class O extends e<String, Void, TopicSummary> {
    private List<BookReadRecord> a;

    private O(HomeTopicFragment paramHomeTopicFragment) {
    }

    private TopicSummary a() {
        try {
            this.a = BookReadRecord.getAll();
            b.a();
            TopicSummary localTopicSummary = b.b().k();
            return localTopicSummary;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.O
 * JD-Core Version:    0.6.2
 */