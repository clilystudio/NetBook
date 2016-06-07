package com.clilystudio.app.netbook.adapter;

import com.clilystudio.app.netbook.a_packA.e_BaseAsyncTask;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.PostPublish;

final class S extends e_BaseAsyncTask<String, Void, PostPublish> {
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.S
 * JD-Core Version:    0.6.2
 */