package com.clilystudio.netbook.a;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.model.TopicCount;

import java.io.IOException;

public final class f
        extends e<Void, Void, Void> {
    private String a;

    public f(String string) {
        this.a = string;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private /* varargs */ Void a() {
        block4:
        {
            TopicCount topicCount;
            try {
                b.a();
                topicCount = b.b().I(this.a);
                if (topicCount == null) break block4;
            } catch (IOException var1_2) {
                var1_2.printStackTrace();
                return null;
            }
            if (!topicCount.isOk()) break block4;
            BookTopicEnterRecord.updateCount(this.a, topicCount.getCount());
        }
        do {
            return null;
            break;
        } while (true);
    }

    /*
     * Exception decompiling
     */
    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // java.lang.ArrayIndexOutOfBoundsException
        throw new IllegalStateException("Decompilation failed");
    }
}
