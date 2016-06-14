package com.clilystudio.netbook.reader;

import android.support.design.widget.am;

import com.clilystudio.netbook.model.ChapterLink;

abstract class Z implements Runnable {
    private int a;
    private /* synthetic */ Reader b;

    public Z(Reader reader, int n) {
        this.b = reader;
        this.a = n;
    }

    public abstract void a(ReaderChapter var1);

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    @Override
    public void run() {
        var1_1 = true;
        var2_2 = this.b.d();
        if (var2_2.length > 0 && this.a >= var2_2.length) {
            this.a = -1 + var2_2.length;
        }
        if ((var3_3 = var2_2[this.a]) == null) {
            var5_4 = new ReaderChapter();
            var4_5 = var1_1;
        } else {
            var4_5 = var3_3.getUnreadble();
            var5_4 = Reader.a(this.b, var3_3, this.a);
        }
        if (!var4_5)**GOTO lbl17
        if (Reader.o(this.b) == 5 || Reader.o(this.b) == 10) {
            var5_4.setStatus(-2);
        } else {
            var5_4.setStatus(-3);
        }
        **GOTO lbl47
        lbl17:
        // 1 sources:
        if (!Reader.f(this.b))**GOTO lbl23
        try {
            var5_4.setBody(a.a(Reader.g(this.b), var2_2, this.a).getChapter().getBody());
        } catch (Exception var12_6) {
        }
        **GOTO lbl -1000
        lbl23:
        // 1 sources:
        var6_7 = Reader.b(this.b, var3_3, this.a);
        if (var6_7 == null || var6_7.getChapter() == null)**GOTO lbl -1000
        var7_8 = var6_7.getChapter();
        if (var7_8.getBody() == null)**GOTO lbl46
        var5_4.setBody(var7_8.getBody());
        var5_4.setCpContent(var7_8.getContent());
        var5_4.setId(var7_8.getId());
        var5_4.setIsVip(var7_8.isVip());
        if (var7_8.getLink() != null) {
            var5_4.setLink(var7_8.getLink());
        }
        if ((var9_9 = (ChapterLink) Reader.p(this.b).get(var7_8.getId())) == null)**GOTO lbl47
        if (!var9_9.isVip() && !var7_8.isVip())**GOTO lbl38
        **GOTO lbl39
        lbl - 1000: // 2 sources:
        {
            var5_4.setStatus(-1);
        }
        **GOTO lbl47
        lbl38:
        // 1 sources:
        var1_1 = false;
        lbl39:
        // 2 sources:
        var5_4.setIsVip(var1_1);
        var5_4.setCurrency(var9_9.getCurrency());
        var10_10 = this.b.e().get(var5_4.getId());
        if (var10_10 != null) {
            var5_4.setKey(var10_10);
            a.a(Reader.q(this.b), Reader.h(this.b), am.e((String) var5_4.getLink()), var5_4);
        }
        **GOTO lbl47
        lbl46:
        // 1 sources:
        var5_4.setStatus(var6_7.getStatus());
        lbl47:
        // 7 sources:
        this.b.a.put(this.a, var5_4);
        this.a(var5_4);
    }
}
