package com.clilystudio.netbook.reader;

import android.support.design.widget.am;

import com.clilystudio.netbook.model.Chapter;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.ChapterRoot;

abstract class Z implements Runnable {

    private int a;
    private Reader b;
    public Z(Reader Reader1, int int2) {
        b = Reader1;
        a = int2;
    }

    public abstract void a(ReaderChapter ReaderChapter1);

    public void run() {
        boolean boolean1 = true;
        ChapterLink[] ChapterLink_1darray2 = b.d();
        ChapterLink ChapterLink3;
        Object Object5;
        boolean boolean13;

        if (ChapterLink_1darray2.length > 0 && a >= ChapterLink_1darray2.length)
            a = -1 + ChapterLink_1darray2.length;
        ChapterLink3 = ChapterLink_1darray2[a];
        if (ChapterLink3 == null) {
            int int4;

            Object5 = new ReaderChapter();
            int4 = boolean1;
        } else {
            boolean13 = ChapterLink3.getUnreadble();
            Object5 = Reader.a(b, ChapterLink3, a);
        }
        label_48:
        {
            if (boolean13) {
                if (Reader.o(b) == 5 || Reader.o(b) == 10)
                    ((ReaderChapter) Object5).setStatus(-2);
                else
                    ((ReaderChapter) Object5).setStatus(-3);
            } else {
                if (Reader.f(b)) {
                    try {
                        ((ReaderChapter) Object5).setBody(com.clilystudio.netbook.hpay100.a.a.a(Reader.g(b), ChapterLink_1darray2, a).getChapter().getBody());
                    } catch (Exception Exception12) {
                    }
                } else {
                    ChapterRoot ChapterRoot6 = Reader.b(b, ChapterLink3, a);

                    if (ChapterRoot6 != null && ChapterRoot6.getChapter() != null) {
                        Chapter Chapter7 = ChapterRoot6.getChapter();

                        if (Chapter7.getBody() != null) {
                            ChapterLink ChapterLink9;
                            String String10;

                            ((ReaderChapter) Object5).setBody(Chapter7.getBody());
                            ((ReaderChapter) Object5).setCpContent(Chapter7.getContent());
                            ((ReaderChapter) Object5).setId(Chapter7.getId());
                            ((ReaderChapter) Object5).setIsVip(Chapter7.isVip());
                            if (Chapter7.getLink() != null)
                                ((ReaderChapter) Object5).setLink(Chapter7.getLink());
                            ChapterLink9 = (ChapterLink) Reader.p(b).get(Chapter7.getId());
                            if (ChapterLink9 == null)
                                break label_48;
                            if (!ChapterLink9.isVip() && !Chapter7.isVip())
                                boolean1 = false;
                            ((ReaderChapter) Object5).setIsVip(boolean1);
                            ((ReaderChapter) Object5).setCurrency(ChapterLink9.getCurrency());
                            String10 = (String) b.e().get(((ReaderChapter) Object5).getId());
                            if (String10 != null) {
                                ((ReaderChapter) Object5).setKey(String10);
                                com.clilystudio.netbook.hpay100.a.a.a(Reader.q(b), Reader.h(b), am.e(((ReaderChapter) Object5).getLink()), (Chapter) Object5);
                            }
                        } else
                            ((ReaderChapter) Object5).setStatus(ChapterRoot6.getStatus());
                        break label_48;
                    }
                }
                ((ReaderChapter) Object5).setStatus(-1);
            }
        }
        b.a.put(Integer.valueOf(a), Object5);
        a((ReaderChapter) Object5);
    }
}
