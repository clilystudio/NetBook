package com.clilystudio.netbook.a_pack;

import com.clilystudio.netbook.model.TopicCount;

public abstract class b extends e<String, Void, TopicCount> {
    private static TopicCount a(String[] paramArrayOfString) {
        try {
            com.clilystudio.netbook.api.b.a();
            TopicCount localTopicCount = com.clilystudio.netbook.api.b.b().I(paramArrayOfString[0]);
            return localTopicCount;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }

    protected abstract void a(TopicCount paramTopicCount);
}

