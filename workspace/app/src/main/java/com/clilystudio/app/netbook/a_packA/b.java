package com.clilystudio.app.netbook.a_packA;

import com.clilystudio.app.netbook.model.TopicCount;

public abstract class b extends e<String, Void, TopicCount> {
    private static TopicCount a(String[] paramArrayOfString) {
        try {
            com.clilystudio.app.netbook.api.b.a();
            TopicCount localTopicCount = com.clilystudio.app.netbook.api.b.b().I(paramArrayOfString[0]);
            return localTopicCount;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }

    protected abstract void a(TopicCount paramTopicCount);
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.a.b
 * JD-Core Version:    0.6.2
 */