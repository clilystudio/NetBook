package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.model.CommentDetail;

import java.io.IOException;

public abstract class f extends c {

    public f(Activity Activity1) {
        super(Activity1, 2131034218);
    }

    private static transient CommentDetail a(String[] String_1darray1) {
        String String2 = String_1darray1[0];
        String String3 = String_1darray1[1];
        CommentDetail CommentDetail4 = new CommentDetail();
        CommentDetail CommentDetail7;

        try {
            com.clilystudio.netbook.api.b.a();
            CommentDetail7 = com.clilystudio.netbook.api.b.b().A(String2, String3);
        } catch (IOException IOException5) {
            IOException5.printStackTrace();
            return CommentDetail4;
        }
        return CommentDetail7;
    }

    public final volatile Object a(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    public abstract void a(CommentDetail CommentDetail1);

    public final volatile void a(Object Object1) {
        a((CommentDetail) Object1);
    }
}
