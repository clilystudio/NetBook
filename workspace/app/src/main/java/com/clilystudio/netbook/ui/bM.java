package com.clilystudio.netbook.ui;

import android.app.Activity;

import com.clilystudio.netbook.c;
import com.clilystudio.netbook.model.HotKeywordResult;
import com.clilystudio.netbook.util.e;
import com.clilystudio.netbook.widget.AutoFlowView$Word;

import java.util.ArrayList;

final class bM
        extends com.clilystudio.netbook.a.e<String, Void, HotKeywordResult> {
    final /* synthetic */ SearchActivity a;

    private bM(SearchActivity searchActivity) {
        this.a = searchActivity;
    }

    /* synthetic */ bM(SearchActivity searchActivity, byte by) {
        this(searchActivity);
    }

    private /* varargs */ HotKeywordResult a() {
        try {
            HotKeywordResult hotKeywordResult = this.c().b();
            return hotKeywordResult;
        } catch (Throwable var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    /*
     * Exception decompiling
     */
    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // java.lang.ArrayIndexOutOfBoundsException
        throw new IllegalStateException("Decompilation failed");
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        HotKeywordResult hotKeywordResult = (HotKeywordResult) object;
        if (hotKeywordResult != null) {
            ArrayList<AutoFlowView$Word> arrayList = new ArrayList<AutoFlowView$Word>();
            for (String string : hotKeywordResult.getHotWords()) {
                AutoFlowView$Word autoFlowView$Word = new AutoFlowView$Word();
                autoFlowView$Word.show = 0;
                autoFlowView$Word.content = string;
                arrayList.add(autoFlowView$Word);
            }
            a.a(arrayList, c.e, "search_hotword.txt");
            SearchActivity.g(this.a).setVisibility(0);
            SearchActivity.e(this.a).setWords(hotKeywordResult.getHotWords());
            SearchActivity.e(this.a).setOnItemClickListener(new bN(this));
            SearchActivity.h(this.a).setOnClickListener(new bO(this));
            return;
        }
        e.a((Activity) this.a, (String) "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff01");
    }
}
