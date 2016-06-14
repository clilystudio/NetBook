package com.clilystudio.netbook.reader.dl;

import android.content.Context;

import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.util.e;

final class g extends com.clilystudio.netbook.a_pack.e<Void, Void, Toc> {
    private /* synthetic */ BookDownloadService a;

    private g(BookDownloadService bookDownloadService) {
        this.a = bookDownloadService;
    }

    /* synthetic */ g(BookDownloadService bookDownloadService, byte by) {
        this(bookDownloadService);
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return BookDownloadService.f(this.a).a();
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        Toc toc = (Toc) object;
        super.onPostExecute(toc);
        if (toc != null && toc.getChapters() != null) {
            a.a(BookDownloadService.d(this.a), toc.get_id(), "toc", toc);
            BookDownloadService.a(this.a, toc.getChapters());
            BookDownloadService.e(this.a, BookDownloadService.p(this.a).length);
            BookDownloadService.f(this.a, BookDownloadService.h(this.a));
            BookDownloadService.q(this.a);
            return;
        }
        e.a((Context) this.a.getApplicationContext(), (String) "\u83b7\u53d6\u76ee\u5f55\u5931\u8d25\uff0c\u6682\u65f6\u65e0\u6cd5\u7f13\u5b58");
        BookDownloadService.r(this.a);
    }
}
