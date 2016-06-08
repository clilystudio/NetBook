package com.clilystudio.netbook.adapter;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PostPublish;

final class S extends e<String, Void, PostPublish> {
    S(G paramG) {
    }

    private static PostPublish a(String[] paramArrayOfString) {
        try {
            b.a();
            PostPublish localPostPublish = b.b().k(paramArrayOfString[0], paramArrayOfString[1]);
            return localPostPublish;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

