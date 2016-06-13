package com.clilystudio.netbook.reader.dl;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.model.TocSource;
import com.clilystudio.netbook.model.TocSourceRoot;

final class f
        extends e<String, Void, TocSourceRoot> {
    private /* synthetic */ BookDownloadService a;

    private f(BookDownloadService bookDownloadService) {
        this.a = bookDownloadService;
    }

    /* synthetic */ f(BookDownloadService bookDownloadService, byte by) {
        this(bookDownloadService);
    }

    private static TocSourceRoot a(String[] arrstring) {
        try {
            b.a();
            TocSourceRoot tocSourceRoot = b.b().g(arrstring[0]);
            return tocSourceRoot;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return f.a((String[]) arrobject);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        TocSourceRoot tocSourceRoot = (TocSourceRoot) object;
        super.onPostExecute(tocSourceRoot);
        if (tocSourceRoot != null && tocSourceRoot.getSources() != null) {
            TocSource[] arrtocSource = tocSourceRoot.getSources();
            int n = arrtocSource.length;
            for (int j = 0; j < n; ++j) {
                a.a(arrtocSource[j], BookDownloadService.d(this.a));
            }
        }
        BookDownloadService.d(this.a, 5);
        BookReadRecord bookReadRecord = BookReadRecord.getOnShelf(BookDownloadService.d(this.a));
        if (bookReadRecord != null) {
            bookReadRecord.setReadMode(5);
            bookReadRecord.save();
            BookDownloadService.a(this.a, bookReadRecord);
            return;
        }
        BookDownloadService.o(this.a);
    }
}
