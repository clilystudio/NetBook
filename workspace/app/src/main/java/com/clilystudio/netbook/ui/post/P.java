package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.model.PostPublish;

final class P extends com.clilystudio.netbook.a.c {

    private AddVoteActivity a;

    public P(AddVoteActivity AddVoteActivity1, Activity Activity2, int int3) {
        super(Activity2, 2131034430);
        a = AddVoteActivity1;
    }

    private transient PostPublish a(String[] String_1darray1) {
        PostPublish PostPublish3;

        try {
            switch (AddVoteActivity.d(a)) {
                case 1:
                case 2:
                default:
                    return com.clilystudio.netbook.api.b.b().g(String_1darray1[0], String_1darray1[2], String_1darray1[3], AddVoteActivity.e(a));
                case 0:
                    return com.clilystudio.netbook.api.b.b().e(String_1darray1[0], String_1darray1[1], String_1darray1[2], String_1darray1[3]);
                case 3:
                    return com.clilystudio.netbook.api.b.b().j(String_1darray1[0], String_1darray1[3]);
                case 4:
                    return com.clilystudio.netbook.api.b.b().b(String_1darray1[0], String_1darray1[2], String_1darray1[3]);
                case 5:
                    PostPublish3 = com.clilystudio.netbook.api.b.b().g(String_1darray1[0], String_1darray1[2], String_1darray1[3], AddVoteActivity.e(a));
                    break;
            }
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
