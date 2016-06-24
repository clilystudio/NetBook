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
    protected final /* synthetic */ Toc doInBackground(Void[] arrobject) {
        return BookDownloadService.f(this.a).a();
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Toc object) {
        Toc toc = (Toc) object;
        super.onPostExecute(toc);
        if (toc != null && toc.getChapters() != null) {
            com.clilystudio.netbook.hpay100.a.a.a(BookDownloadService.d(this.a), toc.get_id(), "toc", toc);
            BookDownloadService.a(this.a, toc.getChapters());
            BookDownloadService.e(this.a, BookDownloadService.p(this.a).length);
            BookDownloadService.f(this.a, BookDownloadService.h(this.a));
            BookDownloadService.q(this.a);
            return;
        }
        e.a(this.a.getApplicationContext(), "获取目录失败，暂时无法缓存");
        BookDownloadService.r(this.a);
    }
}
