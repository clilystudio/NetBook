package com.clilystudio.netbook.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.clilystudio.netbook.model.BookRankRoot;
import com.clilystudio.netbook.model.BookRankSummary;

import java.util.List;

public final class BookRankAdapter
        extends u<BookRankSummary> {
    private LayoutInflater a;
    private List<BookRankSummary> b;
    private List<BookRankSummary> c;
    private List<BookRankSummary> d;
    private List<BookRankSummary> e;
    private int f;
    private int g;

    public BookRankAdapter(LayoutInflater layoutInflater) {
        this.a = layoutInflater;
    }

    static /* synthetic */ boolean a(BookRankAdapter bookRankAdapter, int n) {
        return bookRankAdapter.b(n);
    }

    private BookRankSummary a(int n) {
        if (this.b(n) && n - 1 < this.b.size()) {
            return this.b.get(n - 1);
        }
        int n2 = n - this.f;
        if (n2 - 1 < this.d.size()) {
            return this.d.get(n2 - 1);
        }
        return null;
    }

    private boolean b(int n) {
        if (n < this.f) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(BookRankRoot bookRankRoot) {
        int n = 1;
        int n2 = bookRankRoot.getMale().size() > 0 ? n : 0;
        this.b = bookRankRoot.getMainMaleList();
        this.c = bookRankRoot.getSubMaleList();
        if (n2 != 0) {
            int n3 = 1 + this.b.size();
            int n4 = this.c.size() > 0 ? n : 0;
            this.f = n4 + n3;
        } else {
            this.f = 0;
        }
        int n5 = bookRankRoot.getFemale().size() > 0 ? n : 0;
        this.d = bookRankRoot.getMainFemaleList();
        this.e = bookRankRoot.getSubFemaleList();
        if (n5 != 0) {
            int n6 = 1 + this.d.size();
            if (this.e.size() <= 0) {
                n = 0;
            }
            this.g = n6 + n;
        } else {
            this.g = 0;
        }
        this.notifyDataSetInvalidated();
    }

    @Override
    public final int getCount() {
        return this.f + this.g;
    }

    @Override
    public final /* synthetic */ Object getItem(int n) {
        return this.a(n);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final int getItemViewType(int n) {
        if (this.b(n)) {
            if (n == 0) return 0;
            {
                if (n >= 1 + this.b.size()) return 2;
                return 1;
            }
        }
        int n2 = n - this.f;
        if (n2 == 0) {
            return 0;
        }
        if (n2 >= 1 + this.d.size()) return 2;
        return 1;
    }

    /*
     * Exception decompiling
     */
    @Override
    public final View getView(int var1_1, View var2_2, ViewGroup var3_3) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.CannotPerformDecode: reachable test BLOCK was exited and re-entered.
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.Misc.getFarthestReachableInRange(Misc.java:143)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.examineSwitchContiguity(SwitchReplacer.java:385)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.op3rewriters.SwitchReplacer.replaceRawSwitches(SwitchReplacer.java:65)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:425)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doClass(Main.java:46)
        // org.benf.cfr.reader.Main.main(Main.java:183)
        throw new IllegalStateException("Decompilation failed");
    }

    @Override
    public final int getViewTypeCount() {
        return 3;
    }
}
