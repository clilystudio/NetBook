package com.clilystudio.netbook.a_pack;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.model.TopicCount;

public final class f extends e<Void, Void, Void> {
    private String a;

    public f(String string) {
        this.a = string;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private /* varargs */ Void a() {
        b.a();
        TopicCount topicCount = b.b().I(this.a);
        if (topicCount != null && !topicCount.isOk()) {
            BookTopicEnterRecord.updateCount(this.a, topicCount.getCount());
        }
        return null;
    }

    @Override
    protected final /* synthetic */ Void doInBackground(Void[] var1_1) {
        return this.a();
    }
}
