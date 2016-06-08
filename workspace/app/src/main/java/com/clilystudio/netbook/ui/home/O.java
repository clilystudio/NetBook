package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.model.TopicSummary;

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

