package com.clilystudio.netbook.reader.dl;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.model.TocSource;
import com.clilystudio.netbook.model.TocSourceRoot;

final class f extends e {

    private BookDownloadService a;

    f(BookDownloadService BookDownloadService1, byte byte2) {
        this(BookDownloadService1);
    }

    private f(BookDownloadService BookDownloadService1) {
        a = BookDownloadService1;
    }

    private static TocSourceRoot a(String[] String_1darray1) {
        TocSourceRoot TocSourceRoot4;

        try {
            com.clilystudio.netbook.api.b.a();
            TocSourceRoot4 = com.clilystudio.netbook.api.b.b().g(String_1darray1[0]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return TocSourceRoot4;
    }

    protected final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        Object Object2 = (TocSourceRoot) Object1;
        BookReadRecord BookReadRecord4;

        super.onPostExecute(Object2);
        if (Object2 != null && ((TocSourceRoot) Object2).getSources() != null) {
            TocSource[] TocSource_1darray6 = ((TocSourceRoot) Object2).getSources();
            int int7 = TocSource_1darray6.length;
            int int8;

            for (int8 = 0; int8 < int7; ++int8)
                com.clilystudio.netbook.hpay100.a.a.a(TocSource_1darray6[int8], BookDownloadService.d(a));
        }
        BookDownloadService.d(a, 5);
        BookReadRecord4 = BookReadRecord.getOnShelf(BookDownloadService.d(a));
        if (BookReadRecord4 != null) {
            BookReadRecord4.setReadMode(5);
            BookReadRecord4.save();
            BookDownloadService.a(a, BookReadRecord4);
        } else
            BookDownloadService.o(a);
    }
}
