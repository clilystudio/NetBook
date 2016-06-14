package com.clilystudio.netbook.a_pack;

import com.clilystudio.netbook.model.TopicCount;

public abstract class b
        extends e<String, Void, TopicCount> {
    private static /* varargs */ TopicCount a(String... arrstring) {
        try {
            com.clilystudio.netbook.api.b.a();
            TopicCount topicCount = com.clilystudio.netbook.api.b.b().I(arrstring[0]);
            return topicCount;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    protected abstract void a(TopicCount var1);

    @Override
    protected /* synthetic */ Object doInBackground(Object[] arrobject) {
        return b.a((String[]) arrobject);
    }

    @Override
    protected /* synthetic */ void onPostExecute(Object object) {
        TopicCount topicCount = (TopicCount) object;
        super.onPostExecute(topicCount);
        if (topicCount != null && topicCount.isOk()) {
            this.a(topicCount);
        }
    }
}
