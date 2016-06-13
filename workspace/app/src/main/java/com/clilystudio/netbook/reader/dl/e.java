package com.clilystudio.netbook.reader.dl;

import android.content.Context;
import android.support.design.widget.am;

import com.clilystudio.netbook.db.BookDlRecord;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Chapter;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.ChapterRoot;
import com.clilystudio.netbook.util.I;

final class e
        extends com.clilystudio.netbook.a.e<Void, Void, ChapterRoot> {
    private ChapterLink a;
    private int b;
    private /* synthetic */ BookDownloadService c;

    public e(BookDownloadService bookDownloadService, ChapterLink chapterLink, int n) {
        this.c = bookDownloadService;
        this.a = chapterLink;
        this.b = n;
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        ChapterRoot chapterRoot = BookDownloadService.f(this.c).a(this.a, this.b);
        BookDlRecord bookDlRecord = BookDlRecord.get(BookDownloadService.d(this.c));
        if (bookDlRecord != null) {
            bookDlRecord.setProgress(BookDownloadService.g(this.c));
            bookDlRecord.save();
        }
        return chapterRoot;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        Chapter chapter;
        int n = 1;
        ChapterRoot chapterRoot = (ChapterRoot) object;
        super.onPostExecute(chapterRoot);
        BookDownloadService.b(this.c).putExtra("SerDlCurrentCount", BookDownloadService.g(this.c));
        BookDownloadService.b(this.c).putExtra("SerDlChapterCount", BookDownloadService.h(this.c));
        BookDownloadService.b(this.c).putExtra("bookId", BookDownloadService.d(this.c));
        BookDownloadService.i(this.c);
        int n2 = a.r(this.c);
        if (BookDownloadService.j(this.c) == n && n2 > n) {
            BookDownloadService.k(this.c);
            com.clilystudio.netbook.util.e.a((Context) this.c.getApplicationContext(), (String) "\u6d41\u91cf\u4e0b\u81ea\u52a8\u6682\u505c\u7f13\u5b58\uff0c\u8fde\u63a5 Wi-Fi \u7ee7\u7eed\u6216\u624b\u52a8\u5f00\u59cb\u7f13\u5b58");
        } else if (a.t(this.c)) {
            BookDownloadService.e(this.c);
            BookDownloadService.b(this.c, false);
        } else {
            BookDownloadService.k(this.c);
            com.clilystudio.netbook.util.e.a((Context) this.c.getApplicationContext(), (String) "\u7f13\u5b58\u6682\u505c\uff0c\u8fde\u63a5\u7f51\u7edc\u540e\u7ee7\u7eed\u4e0b\u8f7d");
        }
        BookDownloadService.b(this.c, n2);
        if (chapterRoot != null && chapterRoot.getChapter() != null && (chapter = chapterRoot.getChapter()).getBody() != null) {
            String string = chapter.getLink();
            BookDownloadService.b(this.c).putExtra("SerDlLink", string);
            BookDownloadService.l(this.c);
            if (BookDownloadService.m(this.c) == null) {
                BookDownloadService.a(this.c, I.c);
            }
            a.a(BookDownloadService.d(this.c), BookDownloadService.m(this.c), am.e((String) string), chapter);
        }
        BookDownloadService.c(this.c);
        if (BookDownloadService.n(this.c) == 0 || BookDownloadService.g(this.c) == BookDownloadService.h(this.c)) {
            i.a().c(new com.clilystudio.netbook.event.I());
            BookDownloadService.c(this.c, BookDownloadService.g(this.c));
            return;
        } else {
            if (BookDownloadService.h(this.c) > 20) {
                n = BookDownloadService.h(this.c) / 20;
            }
            if (BookDownloadService.g(this.c) - BookDownloadService.n(this.c) < n) return;
            {
                i.a().c(new com.clilystudio.netbook.event.I());
                BookDownloadService.c(this.c, BookDownloadService.g(this.c));
                return;
            }
        }
    }
}
