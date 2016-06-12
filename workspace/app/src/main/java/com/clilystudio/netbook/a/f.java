package com.clilystudio.netbook.a;

import com.clilystudio.netbook.model.TopicCount;

import java.io.IOException;

public final class f extends e {

    private String a;

    public f(String String1) {
        a = String1;
    }

    private transient Void a() {
        try {
            TopicCount TopicCount3;

            com.clilystudio.netbook.api.b.a();
            TopicCount3 = com.clilystudio.netbook.api.b.b().I(a);
        } catch (IOException IOException1) {
            IOException1.printStackTrace();
        }
        return null;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a();
    }
}
