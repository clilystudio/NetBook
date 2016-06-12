package com.clilystudio.netbook.reader.dl;

import com.clilystudio.netbook.model.Toc;

final class g extends com.clilystudio.netbook.a.e {

    private BookDownloadService a;

    g(BookDownloadService BookDownloadService1, byte byte2) {
        this(BookDownloadService1);
    }

    private g(BookDownloadService BookDownloadService1) {
        a = BookDownloadService1;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return BookDownloadService.f(a).a();
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (Toc) Object1;

        super.onPostExecute(Object2);
        if (Object2 != null && ((Toc) Object2).getChapters() != null) {
            com.clilystudio.netbook.hpay100.a.a.a(BookDownloadService.d(a), ((Toc) Object2).get_id(), "toc", (Toc) Object2);
            BookDownloadService.a(a, ((Toc) Object2).getChapters());
            BookDownloadService.e(a, BookDownloadService.p(a).length);
            BookDownloadService.f(a, BookDownloadService.h(a));
            BookDownloadService.q(a);
        } else {
            com.clilystudio.netbook.util.e.a(a.getApplicationContext(), "\u83B7\u53D6\u76EE\u5F55\u5931\u8D25\uFF0C\u6682\u65F6\u65E0\u6CD5\u7F13\u5B58");
            BookDownloadService.r(a);
        }
    }
}
