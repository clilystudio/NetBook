package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.util.e;

import java.io.IOException;
import java.util.List;

final class N
        extends c<String[], List<BookSummary>> {
    private /* synthetic */ UGCGuideEditBooksActivity a;

    public N(UGCGuideEditBooksActivity uGCGuideEditBooksActivity, Activity activity) {
        this.a = uGCGuideEditBooksActivity;
        super(activity, "\u6b63\u5728\u6dfb\u52a0\u4e66\u7c4d...");
    }

    private /* varargs */ List<BookSummary> a(String[]... arrstring) {
        String[] arrstring2 = arrstring[0];
        try {
            List<BookSummary> list = b.b().a(arrstring2);
            return list;
        } catch (IOException var3_4) {
            var3_4.printStackTrace();
            return null;
        }
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        List list = (List) object;
        if (list != null) {
            UGCNewCollection uGCNewCollection = UGCGuideEditBooksActivity.k(this.a);
            for (BookSummary bookSummary : list) {
                uGCNewCollection.addBook(bookSummary);
                bookSummary.setSelected(true);
            }
            UGCGuideEditBooksActivity.c(this.a);
            return;
        }
        e.a((Activity) this.a, (String) "\u6dfb\u52a0\u4e66\u7c4d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u91cd\u8bd5");
    }
}
