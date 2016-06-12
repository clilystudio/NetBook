package com.clilystudio.netbook.util;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.Root;

public abstract class S extends e {

    private transient Root a(String[] String_1darray1) {
        Root Root4;

        try {
            com.clilystudio.netbook.api.b.a();
            Root4 = a(com.clilystudio.netbook.api.b.b(), String_1darray1);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return Root4;
    }

    protected abstract Root a(ApiService ApiService1, String[] String_1darray2);

    protected void a(Root Root1) {
    }

    protected abstract void b(Root Root1);

    protected Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected void onPostExecute(Object Object1) {
        Object Object2 = (Root) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null && ((Root) Object2).isOk())
            b((Root) Object2);
        else
            a((Root) Object2);
    }
}
