package com.clilystudio.netbook.reader;

final class L
        implements e<ReaderChapter> {
    private /* synthetic */ e a;
    private /* synthetic */ int b;
    private /* synthetic */ int c;
    private /* synthetic */ K d;

    L(K k, e e2, int n, int n2) {
        this.d = k;
        this.a = e2;
        this.b = n;
        this.c = n2;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final /* synthetic */ void a(Object object) {
        ReaderChapter readerChapter = (ReaderChapter) object;
        if (readerChapter.getStatus() != 1) {
            this.a.a(K.a(this.d, readerChapter, this.b));
            return;
        }
        int[] arrn = this.d.a(readerChapter.getBody());
        int n2 = this.c;
        int n3 = 0;
        if (n2 != 0) {
            if (this.c == -1) {
                n3 = -1 + arrn.length;
            } else {
                int n4 = -1 + arrn.length;
                do {
                    n3 = 0;
                    if (n4 == 0) break;
                    if (this.c >= arrn[n4]) {
                        n3 = n4;
                        break;
                    }
                    --n4;
                } while (true);
            }
        }
        this.a.a(new n(this.d, readerChapter, arrn, n3));
    }
}
