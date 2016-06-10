package com.clilystudio.netbook.a_pack;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.model.TopicCount;

public final class f extends e<Void, Void, Void> {
    private String a;

    public f(String paramString) {
        this.a = paramString;
    }

    public Void doInBackground(Void[] paramArrayOfInput) {
        b.a();
        TopicCount localTopicCount = b.b().I(this.a);
        if ((localTopicCount != null) && (localTopicCount.isOk()))
            BookTopicEnterRecord.updateCount(this.a, localTopicCount.getCount());
        return null;
    }
}

