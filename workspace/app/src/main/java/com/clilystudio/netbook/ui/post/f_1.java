package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.CommentDetail;

import java.io.IOException;

public abstract class f
        extends c<String, CommentDetail> {
    public f(Activity activity) {
        super(activity, 2131034218);
    }

    private static /* varargs */ CommentDetail a(String... arrstring) {
        String string = arrstring[0];
        String string2 = arrstring[1];
        CommentDetail commentDetail = new CommentDetail();
        try {
            b.a();
            CommentDetail commentDetail2 = b.b().A(string, string2);
            return commentDetail2;
        } catch (IOException var4_5) {
            var4_5.printStackTrace();
            return commentDetail;
        }
    }

    @Override
    public abstract void a(CommentDetail var1);
}
