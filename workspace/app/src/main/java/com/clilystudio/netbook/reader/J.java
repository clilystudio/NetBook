package com.clilystudio.netbook.reader;

import android.support.design.widget.am;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.model.PurchaseChapterResult;

final class J
        extends e<String, Void, PurchaseChapterResult> {
    private ReaderChapter a;
    private /* synthetic */ o b;

    public J(o o2, ReaderChapter readerChapter) {
        this.b = o2;
        this.a = readerChapter;
    }

    private static /* varargs */ PurchaseChapterResult a(String... arrstring) {
        try {
            b.a();
            PurchaseChapterResult purchaseChapterResult = b.b().a(arrstring[0], arrstring[1], 1);
            return purchaseChapterResult;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return J.a((String[]) arrobject);
    }

    @Override
    protected final void onCancelled() {
        super.onCancelled();
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        PurchaseChapterResult purchaseChapterResult = (PurchaseChapterResult) object;
        super.onPostExecute(purchaseChapterResult);
        if (purchaseChapterResult != null && purchaseChapterResult.isOk()) {
            o.b((o) this.b).q().a().e().put(purchaseChapterResult.getChapterId(), purchaseChapterResult.getKey());
            a.a(((ReaderActivity) o.a((o) this.b)).l(), o.b((o) this.b).q().a().e());
            if (purchaseChapterResult.getChapterId().equals(this.a.getId())) {
                a.a(((ReaderActivity) o.a((o) this.b)).l(), ((ReaderActivity) o.a((o) this.b)).f(), am.e((String) this.a.getLink()), this.a);
            }
        }
    }
}
