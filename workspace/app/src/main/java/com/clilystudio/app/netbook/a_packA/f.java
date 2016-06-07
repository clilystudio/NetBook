package com.clilystudio.app.netbook.a_packA;

import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.db.BookTopicEnterRecord;
import com.clilystudio.app.netbook.model.TopicCount;

import java.io.IOException;

public final class f extends e_BaseAsyncTask<Void, Void, Void> {
    private String a;

    public f(String paramString) {
        this.a = paramString;
    }

    private Void a() {
        try {
            b.a();
            TopicCount localTopicCount = b.b().I(this.a);
            if ((localTopicCount != null) && (localTopicCount.isOk()))
                BookTopicEnterRecord.updateCount(this.a, localTopicCount.getCount());
            return null;
        } catch (IOException localIOException) {
            while (true)
                localIOException.printStackTrace();
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.a.f
 * JD-Core Version:    0.6.2
 */