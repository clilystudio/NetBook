package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.model.PostPublish;

final class Z extends com.clilystudio.netbook.a.c {

    private AddVoteItemActivity a;

    public Z(AddVoteItemActivity AddVoteItemActivity1, Activity Activity2, int int3) {
        super(Activity2, 2131034430);
        a = AddVoteItemActivity1;
    }

    private transient PostPublish a(String[] String_1darray1) {
        PostPublish PostPublish3;

        try {
            if (AddVoteItemActivity.e(a) == 0)
                return com.clilystudio.netbook.api.b.b().b(String_1darray1[0], String_1darray1[1], String_1darray1[2], String_1darray1[3], String_1darray1[4]);
            else if (AddVoteItemActivity.e(a) == 3)
                return com.clilystudio.netbook.api.b.b().c(String_1darray1[0], String_1darray1[2], String_1darray1[3], String_1darray1[4]);
            else
                PostPublish3 = com.clilystudio.netbook.api.b.b().d(String_1darray1[0], String_1darray1[2], String_1darray1[3], String_1darray1[4]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return PostPublish3;
    }

    public final volatile Object a(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final void a(Object Object1) {
    }
}
