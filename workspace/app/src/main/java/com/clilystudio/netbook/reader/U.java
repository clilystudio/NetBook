package com.clilystudio.netbook.reader;

import com.clilystudio.netbook.am;
import com.clilystudio.netbook.model.Chapter;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.ChapterRoot;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class U implements Y {
    final /* synthetic */ Reader a;
    private Map<Integer, ArrayList<e<ReaderChapter>>> b;
    private Map<Integer, Integer> c;

    U(Reader reader) {
        this.a = reader;
        this.b = new HashMap<Integer, ArrayList<e<ReaderChapter>>>();
        this.c = new HashMap<Integer, Integer>();
    }

    static /* synthetic */ Map<Integer, ArrayList<e<ReaderChapter>>> a(U u) {
        return u.b;
    }

    static /* synthetic */ Map<Integer, Integer> b(U u) {
        return u.c;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public final void a(final int n, e<ReaderChapter> e2, boolean bl) {
        synchronized (this) {
             ArrayList<e<ReaderChapter>> arrayList = this.b.get(n);
            if (arrayList == null) {
                ArrayList arrayList2 = new ArrayList();
                this.b.put(n, arrayList2);
            }
            arrayList.add(e2);
            if (!bl) {
                Reader.a(this.a, 0, Reader.Type.CHAPTER);
                Integer n2 = this.c.get(n);
                if (n2 == null) {
                    this.c.put(n, 1);
                } else {
                    this.c.put(n, 1 + n2);
                }
            }
            Reader.e(this.a).execute(new Runnable() {

                public final void af(final ReaderChapter readerChapter) {
                    int nx = n;
                    final List<e<ReaderChapter>> list = U.a(U.this).remove(nx);
                    if (list != null) {
                        Reader.d(U.this.a).post(new Runnable() {
                            @Override
                            public void run() {
                                for (e<ReaderChapter> aList : list) {
                                    aList.a(readerChapter);
                                }
                            }
                        });
                    }
                    int ny;
                    if ((ny = U.b(U.this).remove(nx)) != 0) {
                        while (ny != 0) {
                            Reader.a(U.this.a, 1, Reader.Type.CHAPTER);
                            ny--;
                        }
                    }
                }

                @Override
                public void run() {
                    int nx = n;
                    ChapterLink[] var2_2 = U.this.a.d();
                    if (var2_2.length > 0 && nx >= var2_2.length) {
                        nx = var2_2.length - 1;
                    }
                    ChapterLink var3_3;
                    ReaderChapter var5_4;
                    boolean var4_5;
                    if ((var3_3 = var2_2[n]) == null) {
                        var5_4 = new ReaderChapter();
                        var4_5 = true;
                    } else {
                        var4_5 = var3_3.getUnreadble();
                        var5_4 = Reader.a(U.this.a, var3_3, nx);
                    }
                    if (var4_5) {
                        if (Reader.o(U.this.a) == 5 || Reader.o(U.this.a) == 10) {
                            var5_4.setStatus(-2);
                        } else {
                            var5_4.setStatus(-3);
                        }
                    } else {
                        if (Reader.f(U.this.a)) {
                            var5_4.setBody(com.clilystudio.netbook.hpay100.a.a.a(Reader.g(U.this.a), var2_2, nx).getChapter().getBody());
                        } else {
                            ChapterRoot var6_7 = Reader.b(U.this.a, var3_3, nx);
                            if (var6_7 == null || var6_7.getChapter() == null) {
                                var5_4.setStatus(-1);
                            } else if (var6_7.getChapter().getBody() == null) {
                                var5_4.setStatus(var6_7.getStatus());
                            } else {
                                Chapter var7_8 = var6_7.getChapter();
                                var5_4.setBody(var7_8.getBody());
                                var5_4.setCpContent(var7_8.getContent());
                                var5_4.setId(var7_8.getId());
                                var5_4.setIsVip(var7_8.isVip());
                                if (var7_8.getLink() != null) {
                                    var5_4.setLink(var7_8.getLink());
                                }
                                ChapterLink var9_9 = (ChapterLink) Reader.p(U.this.a).get(var7_8.getId());
                                if (var9_9 != null) {
                                    var5_4.setIsVip(var9_9.isVip() || var7_8.isVip());
                                    var5_4.setCurrency(var9_9.getCurrency());
                                    String var10_10 = U.this.a.e().get(var5_4.getId());
                                    if (var10_10 != null) {
                                        var5_4.setKey(var10_10);
                                        com.clilystudio.netbook.hpay100.a.a.a(Reader.q(U.this.a), Reader.h(U.this.a), am.e(var5_4.getLink()), var5_4);
                                    }
                                }
                            }
                        }
                    }
                    U.this.a.a.put(nx, var5_4);
                    af(var5_4);
                }
            });
            return;
        }
    }
}
