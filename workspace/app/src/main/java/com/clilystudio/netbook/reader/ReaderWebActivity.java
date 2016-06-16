package com.clilystudio.netbook.reader;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.SourceRecord;
import com.clilystudio.netbook.db.SourceWebReadRecord;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.v;
import com.clilystudio.netbook.model.mixtoc.SgTocChapter;
import com.clilystudio.netbook.ui.post.BookPostTabActivity;
import com.squareup.a.l;

public class ReaderWebActivity extends BaseReadActivity {
    private int b;
    private String c;
    private String d;
    private String e;
    private String f;
    private ReaderWebActionBar g;
    private int h;

    static /* synthetic */ int a(ReaderWebActivity readerWebActivity, int n) {
        readerWebActivity.h = n;
        return n;
    }

    public static Intent a(Context context, String string, String string2, String string3, String string4, int n) {
        return new d().a(context, ReaderWebActivity.class).a("BOOK_ID", string).a("BOOK_TITLE", string2).a("TOC_ID", string3).a("SOURCE_ID", string4).a("BOOK_MODE", n).a();
    }

    static /* synthetic */ SgTocChapter a(ReaderWebActivity readerWebActivity, SgTocChapter[] arrsgTocChapter, String string) {
        for (SgTocChapter sgTocChapter : arrsgTocChapter) {
            if (!string.equals(sgTocChapter.getCmd())) continue;
            return sgTocChapter;
        }
        return null;
    }

    static /* synthetic */ ReaderWebActionBar a(ReaderWebActivity readerWebActivity) {
        return readerWebActivity.g;
    }

    static /* synthetic */ void a(ReaderWebActivity readerWebActivity, int n, String string) {
        FragmentTransaction fragmentTransaction = readerWebActivity.getSupportFragmentManager().beginTransaction();
        String string2 = readerWebActivity.e;
        ReaderWebPageFragment readerWebPageFragment = (ReaderWebPageFragment) readerWebActivity.getSupportFragmentManager().findFragmentByTag(ReaderWebPageFragment.class.getName());
        if (readerWebPageFragment == null) {
            readerWebPageFragment = ReaderWebPageFragment.a(readerWebActivity.b, string2, n, string);
        }
        fragmentTransaction.replace(R.id.content_frame, readerWebPageFragment);
        try {
            fragmentTransaction.commitAllowingStateLoss();
            return;
        } catch (IllegalStateException var7_6) {
            var7_6.printStackTrace();
            return;
        }
    }

    static /* synthetic */ void a(ReaderWebActivity readerWebActivity, String string, String string2, String string3, String string4) {
        FragmentTransaction fragmentTransaction = readerWebActivity.getSupportFragmentManager().beginTransaction();
        String string5 = readerWebActivity.e;
        ReaderWebPageFragment readerWebPageFragment = (ReaderWebPageFragment) readerWebActivity.getSupportFragmentManager().findFragmentByTag(ReaderWebPageFragment.class.getName());
        if (readerWebPageFragment == null) {
            readerWebPageFragment = ReaderWebPageFragment.a(readerWebActivity.b, string, string5, string2, string3, string4);
        }
        fragmentTransaction.replace(R.id.content_frame, readerWebPageFragment);
        try {
            fragmentTransaction.commitAllowingStateLoss();
            return;
        } catch (IllegalStateException var9_8) {
            var9_8.printStackTrace();
            return;
        }
    }

    static /* synthetic */ void b(ReaderWebActivity readerWebActivity) {
        a.b((Context) readerWebActivity, readerWebActivity.f, true);
        a.b((Context) readerWebActivity, readerWebActivity.f + "source_web_alert", false);
        if (SourceRecord.get(readerWebActivity.c, readerWebActivity.f) == null) {
            SourceRecord.create(readerWebActivity.c, readerWebActivity.f, null);
        }
        String string = readerWebActivity.getIntent().getStringExtra("TOC_ID");
        boolean bl = readerWebActivity.getIntent().getBooleanExtra("SELECT_LAST", false);
        Intent intent = ReaderActivity.a(readerWebActivity, readerWebActivity.c, readerWebActivity.d, string, readerWebActivity.f, true);
        intent.putExtra("SELECT_LAST", bl);
        intent.putExtra("SOURCE_ID", readerWebActivity.e);
        readerWebActivity.startActivity(intent);
        readerWebActivity.finish();
    }

    static /* synthetic */ void c(ReaderWebActivity readerWebActivity) {
        if (a.g()) {
            AlertDialog alertDialog = new AlertDialog.Builder(readerWebActivity).create();
            View view = LayoutInflater.from(readerWebActivity).inflate(R.layout.dialog_reader_web_opt2, null);
            Button button = (Button) view.findViewById(R.id.reader_web_opt2_btn1);
            Button button2 = (Button) view.findViewById(R.id.reader_web_opt2_btn2);
            button.setOnClickListener((View.OnClickListener) ((Object) new cE(readerWebActivity, alertDialog)));
            button2.setOnClickListener(new cF(readerWebActivity, alertDialog));
            alertDialog.setCancelable(false);
            alertDialog.setView(view);
            alertDialog.show();
            return;
        }
        new h(readerWebActivity).b(R.string.reader_web_opt_msg2).a(false).a("\u8f6c\u7801\u9605\u8bfb", (DialogInterface.OnClickListener) new cH(readerWebActivity)).b("\u539f\u7f51\u9875\u9605\u8bfb", (DialogInterface.OnClickListener) new cG(readerWebActivity)).b();
    }

    static /* synthetic */ int d(ReaderWebActivity readerWebActivity) {
        return readerWebActivity.h;
    }

    static /* synthetic */ String e(ReaderWebActivity readerWebActivity) {
        return readerWebActivity.c;
    }

    private void a(int n) {
        FragmentTransaction fragmentTransaction = this.getSupportFragmentManager().beginTransaction();
        String string = this.e;
        ReaderWebPageFragment readerWebPageFragment = (ReaderWebPageFragment) this.getSupportFragmentManager().findFragmentByTag(ReaderWebPageFragment.class.getName());
        if (readerWebPageFragment == null) {
            readerWebPageFragment = ReaderWebPageFragment.a(this.b, string, n);
        }
        fragmentTransaction.replace(R.id.content_frame, readerWebPageFragment);
        try {
            fragmentTransaction.commitAllowingStateLoss();
            return;
        } catch (IllegalStateException var6_5) {
            var6_5.printStackTrace();
            return;
        }
    }

    public final void a() {
        this.startActivity(ModeListActivity.a(this, this.c, this.d, this.b));
        this.overridePendingTransition(R.anim.mode_list_enter_in, R.anim.mode_list_enter_out);
    }

    public final void b() {
        this.startActivity(BookPostTabActivity.a(this, this.c, this.d));
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void onCreate(Bundle var1_1) {
        super.onCreate(var1_1);
        this.setContentView(R.layout.activity_reader_web);
        i.a().a(this);
        this.c = this.getIntent().getStringExtra("BOOK_ID");
        this.d = this.getIntent().getStringExtra("BOOK_TITLE");
        this.e = this.getIntent().getStringExtra("SOURCE_ID");
        this.b = var1_1 != null ? var1_1.getInt("savedCurrentMode", 5) : this.getIntent().getIntExtra("BOOK_MODE", 5);
        this.f = a.g(this.b);
        this.g = (ReaderWebActionBar) this.findViewById(R.id.reader_web_action_bar);
        this.g.setTitle(this.d);
        this.g.setChapterLink(a.P(this.f));
        this.g.setOnBtnClickListener$74b8600c((com.umeng.update.a) new cB(this));
        var2_2 = SourceWebReadRecord.get(this.c, this.b);
        var3_3 = var2_2 != null ? var2_2.getChapterIndex() : 0;
        switch (this.b) {
            default: {
                var27_4 = this.getSupportFragmentManager().beginTransaction();
                var28_5 = this.e;
                var29_6 = (ReaderWebPageFragment) this.getSupportFragmentManager().findFragmentByTag(ReaderWebPageFragment.class.getName());
                if (var29_6 == null) {
                    var29_6 = ReaderWebPageFragment.a(this.b, var28_5);
                }
                var27_4.replace(R.id.content_frame, var29_6).commit();
                **GOTO lbl48
            }
            case 6: {
                var24_12 = new cK(this, this, var3_3 + 1);
                var25_13 = new String[]{this.e};
                var24_12.b(var25_13);
                **GOTO lbl48
            }
            case 7: {
                var17_14 = var2_2 != null ? var2_2.getCmd() : null;
            }
            case 8: {
                this.a(var3_3);
                **GOTO lbl48
            }
            case 3: {
                var4_19 = new cI(this, this, var3_3);
                var5_20 = new String[]{this.e};
                var4_19.b(var5_20);
                **GOTO lbl48
            }
        }
        if (BookReadRecord.get(this.c) != null) {
            var18_15 = new cJ(this, this, var3_3, var17_14);
            var19_16 = new String[]{this.e};
            var18_15.b(var19_16);
        } else if (MyApplication.a().c() != null) {
            var21_17 = new cJ(this, this, var3_3, var17_14);
            var22_18 = new String[]{this.e};
            var21_17.b(var22_18);
        }
        lbl48:
        // 8 sources:
        if (a.l(this, this.f + "source_web_alert")) {
            var10_7 = this.getString(R.string.reader_web_opt_msg);
            var11_8 = LayoutInflater.from(this).inflate(R.layout.dialog_reader_web_opt, null);
            var12_9 = new cC(this, var11_8);
            if (a.g()) {
                ((TextView) var11_8.findViewById(R.id.reader_web_opt_url)).setText(a.P(this.f));
                new h(this).a(var11_8).a(false).b(true).a("\u597d\u7684", (DialogInterface.OnClickListener) var12_9).b();
            } else {
                var13_21 = new cD(this);
                var14_22 = new h(this);
                var14_22.e = var10_7;
                var14_22.a(false).a("\u597d\u7684", (DialogInterface.OnClickListener) var12_9).b("\u4e0d\u4f7f\u7528", (DialogInterface.OnClickListener) var13_21).b();
            }
        }
        var7_10 = new cL(this, 0);
        var8_11 = new String[]{this.c};
        var7_10.b(var8_11);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }

    @l
    public void onModeChanged(v v2) {
        this.finish();
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("savedCurrentMode", this.b);
    }
}
