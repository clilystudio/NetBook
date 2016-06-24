package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.am;

import com.clilystudio.netbook.model.PurchaseChapterResult;
import com.clilystudio.netbook.util.I;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

final class p implements e<ReaderChapter> {
    private /* synthetic */ o a;

    p(o o2) {
        this.a = o2;
    }

    @Override
    public final /* synthetic */ void a(final ReaderChapter readerChapter) {
        if (readerChapter != null && this.a.a(readerChapter)) {
            MiStatInterface.recordCountEvent("paying_page_auto_purchase", I.b);
            com.clilystudio.netbook.a_pack.e<String, Void, PurchaseChapterResult> j = new com.clilystudio.netbook.a_pack.e<String, Void, PurchaseChapterResult>(){

                @Override
                protected PurchaseChapterResult doInBackground(String... params) {
                    com.clilystudio.netbook.api.b.a();
                    PurchaseChapterResult purchaseChapterResult = com.clilystudio.netbook.api.b.b().a(params[0], params[1], 1);
                    return purchaseChapterResult;
                }

                @Override
                protected void onPostExecute(PurchaseChapterResult purchaseChapterResult) {
                    super.onPostExecute(purchaseChapterResult);
                    if (purchaseChapterResult != null && purchaseChapterResult.isOk()) {
                        o.b(p.this.a).q().a().e().put(purchaseChapterResult.getChapterId(), purchaseChapterResult.getKey());
                        a.a(((ReaderActivity) o.a(p.this.a)).l(), o.b(p.this.a).q().a().e());
                        if (purchaseChapterResult.getChapterId().equals(readerChapter.getId())) {
                            a.a(((ReaderActivity) o.a(p.this.a)).l(), ((ReaderActivity) o.a(p.this.a)).f(), am.e((String) this.a.getLink()), this.a);
                        }
                    }

                }
            };
            String[] arrstring = new String[]{am.e().getToken(), readerChapter.getId()};
            j.b(arrstring);
        }
    }
}
