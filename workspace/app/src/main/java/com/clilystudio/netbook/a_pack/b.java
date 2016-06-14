package com.clilystudio.netbook.a_pack;

import com.clilystudio.netbook.model.TopicCount;

public abstract class b extends e<String, Void, TopicCount> {
    private static /* varargs */ TopicCount a(String... arrstring) {
        try {
            com.clilystudio.netbook.api.b.a();
            return com.clilystudio.netbook.api.b.b().I(arrstring[0]);
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    protected abstract void a(TopicCount var1);

    @Override
    protected /* synthetic */ TopicCount doInBackground(String[] arrobject) {
        return b.a((String[]) arrobject);
    }

    @Override
    protected /* synthetic */ void onPostExecute(TopicCount object) {
        super.onPostExecute(object);
        if (object != null && object.isOk()) {
            this.a(object);
        }
    }
}
