package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.*;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.db.SourceRecord;
import com.clilystudio.netbook.db.SourceWebReadRecord;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.v;
import com.clilystudio.netbook.model.TopicCount;
import com.clilystudio.netbook.model.mixtoc.EsTocItem;
import com.clilystudio.netbook.model.mixtoc.EsTocRoot;
import com.clilystudio.netbook.model.mixtoc.SgTocChapter;
import com.clilystudio.netbook.model.mixtoc.SgTocRoot;
import com.clilystudio.netbook.ui.post.BookPostTabActivity;
import com.clilystudio.netbook.util.*;
import com.clilystudio.netbook.util.e;

import uk.me.lewisdeane.ldialogs.BaseDialog;

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

    static /* synthetic */ void c(final ReaderWebActivity readerWebActivity) {
        if (a.g()) {
            final AlertDialog alertDialog = new AlertDialog.Builder(readerWebActivity).create();
            View view = LayoutInflater.from(readerWebActivity).inflate(R.layout.dialog_reader_web_opt2, null);
            Button button = (Button) view.findViewById(R.id.reader_web_opt2_btn1);
            Button button2 = (Button) view.findViewById(R.id.reader_web_opt2_btn2);
            button.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    alertDialog.dismiss();
                }
            });
            button2.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    alertDialog.dismiss();
                    ReaderWebActivity.b(readerWebActivity);
                }
            });
            alertDialog.setCancelable(false);
            alertDialog.setView(view);
            alertDialog.show();
            return;
        }
        new BaseDialog.Builder(readerWebActivity).setMessage(R.string.reader_web_opt_msg2).setCancelable(false)
                .setPositiveButton("转码阅读", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        ReaderWebActivity.b(readerWebActivity);
                    }
                })
                .setNegativeButton("原网页阅读", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        // Todo 原来就没处理
                    }
                }).show();
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
        i.a().register(this);
        this.c = this.getIntent().getStringExtra("BOOK_ID");
        this.d = this.getIntent().getStringExtra("BOOK_TITLE");
        this.e = this.getIntent().getStringExtra("SOURCE_ID");
        this.b = var1_1 != null ? var1_1.getInt("savedCurrentMode", 5) : this.getIntent().getIntExtra("BOOK_MODE", 5);
        this.f = com.clilystudio.netbook.hpay100.a.a.g(this.b);
        this.g = (ReaderWebActionBar) this.findViewById(R.id.reader_web_action_bar);
        this.g.setTitle(this.d);
        this.g.setChapterLink(com.clilystudio.netbook.hpay100.a.a.P(this.f));
        this.g.setOnBtnClickListener(new ReaderWebActionBar.OnBtnClickListener() {
            @Override
            public void a(int n) {
                switch (n) {
                    default: {
                        return;
                    }
                    case R.id.reader_oper_back: {
                        onBackPressed();
                        return;
                    }
                    case R.id.reader_ab_topic: {
                        b();
                        ReaderWebActivity.a(ReaderWebActivity.this).a(false);
                        return;
                    }
                    case R.id.reader_ab_read_mode: {
                        ReaderWebActivity.this.a();
                        return;
                    }
                    case R.id.reader_ab_chapter_url_view:
                        ReaderWebActivity.b(ReaderWebActivity.this);
                }
            }
        });
        SourceWebReadRecord var2_2 = SourceWebReadRecord.get(this.c, this.b);
        final int[] var3_3 = {var2_2 != null ? var2_2.getChapterIndex() : 0};
        final String[] var17_14 = {null};
        switch (this.b) {
            default: {
                FragmentTransaction var27_4 = this.getSupportFragmentManager().beginTransaction();
                ReaderWebPageFragment var29_6 = (ReaderWebPageFragment) this.getSupportFragmentManager().findFragmentByTag(ReaderWebPageFragment.class.getName());
                if (var29_6 == null) {
                    var29_6 = ReaderWebPageFragment.a(this.b, this.e);
                }
                var27_4.replace(R.id.content_frame, var29_6).commit();
                break;
            }
            case 6: {
                cK var24_12 = new cK(this, this, var3_3[0] + 1);
                String[] var25_13 = new String[]{this.e};
                var24_12.b(var25_13);
                break;
            }
            case 7: {
                var17_14[0] = var2_2 != null ? var2_2.getCmd() : null;
                if (BookReadRecord.get(this.c) != null || MyApplication.a().c() != null) {
//                    cJ(this, this, var3_3[0], var17_14);
                    c<String, SgTocRoot> var21_17 = new c<String, SgTocRoot>(){

                        @Override
                        public SgTocRoot a(String... var1) {
                            SgTocRoot sgTocRoot = com.clilystudio.netbook.api.b.b().s(var1[0]);
                            return sgTocRoot;
                       }

                        @Override
                        public void a(SgTocRoot sgTocRoot) {
                            if (sgTocRoot != null && sgTocRoot.getBook() != null && sgTocRoot.getChapter() != null && sgTocRoot.getChapter().length > 0) {
                                SgTocChapter sgTocChapter;
                                String string = sgTocRoot.getBook().getMd();
                                SgTocChapter[] arrsgTocChapter = sgTocRoot.getChapter();
                                if (var3_3[0] < 0 || var3_3[0] >= arrsgTocChapter.length) {
                                    var3_3[0] = 0;
                                }
                                if (var17_14[0] != null) {
                                    sgTocChapter = ReaderWebActivity.a(ReaderWebActivity.this, arrsgTocChapter, var17_14[0]);
                                } else {
                                    sgTocChapter = arrsgTocChapter[var3_3[0]];
                                    var17_14[0] = sgTocChapter.getCmd();
                                }
                                if (sgTocChapter != null) {
                                    String string2 = sgTocChapter.getUrl();
                                    String string3 = sgTocChapter.getName();
                                    ReaderWebActivity.a(ReaderWebActivity.this, string, var17_14[0], string2, string3);
                                    return;
                                }
                                com.clilystudio.netbook.util.e.a((Activity) ReaderWebActivity.this, (String) "载入失败");
                                return;
                            }
                            com.clilystudio.netbook.util.e.a((Activity) ReaderWebActivity.this, (String) "载入失败");
                        }
                    };
                    String[] var22_18 = new String[]{this.e};
                    var21_17.b(var22_18);
                }
            }
            case 8: {
                this.a(var3_3[0]);
                break;
            }
            case 3: {
                com.clilystudio.netbook.a_pack.c<String, EsTocRoot> var4_19 = new c<String, EsTocRoot>(){

                    @Override
                    public EsTocRoot a(String... var1) {
                        EsTocRoot esTocRoot = com.clilystudio.netbook.api.b.b().v(var1[0]);
                        return esTocRoot;
                    }

                    @Override
                    public void a(EsTocRoot esTocRoot) {
                        if (esTocRoot != null && esTocRoot.getItems() != null && esTocRoot.getItems().length > 0) {
                            EsTocItem[] arresTocItem = esTocRoot.getItems();
                            if (var3_3[0] < 0 || var3_3[0] >= arresTocItem.length) {
                                var3_3[0] = 0;
                            }
                            EsTocItem esTocItem = arresTocItem[var3_3[0]];
                            ReaderWebActivity.a(ReaderWebActivity.this, 1 + var3_3[0], esTocItem.getCurl());
                            return;
                        }
                        com.clilystudio.netbook.util.e.a(ReaderWebActivity.this,"载入失败");
                    }
                };
                String[] var5_20 = new String[]{this.e};
                var4_19.b(var5_20);
                break;
            }
        }
        lbl48:
        // 8 sources:
        if (com.clilystudio.netbook.hpay100.a.a.l(this, this.f + "source_web_alert")) {
            String var10_7 = this.getString(R.string.reader_web_opt_msg);
            final View var11_8 = LayoutInflater.from(this).inflate(R.layout.dialog_reader_web_opt, null);
            DialogInterface.OnClickListener var12_9 = new DialogInterface.OnClickListener() {

                @Override
                public void onClick(DialogInterface dialog, int which) {
                    if (((CheckBox) var11_8.findViewById(R.id.reader_web_opt_box)).isChecked()) {
                        ReaderWebActivity.b(ReaderWebActivity.this);
                    } else {
                        ReaderWebActivity.c(ReaderWebActivity.this);
                    }
                }
            };
            if (com.clilystudio.netbook.hpay100.a.a.g()) {
                ((TextView) var11_8.findViewById(R.id.reader_web_opt_url)).setText(com.clilystudio.netbook.hpay100.a.a.P(this.f));
                new h(this).a(var11_8).a(false).b(true).a("\u597d\u7684", (DialogInterface.OnClickListener) var12_9).b();
            } else {
                DialogInterface.OnClickListener var13_21 = new DialogInterface.OnClickListener() {

                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        ReaderWebActivity.c(ReaderWebActivity.this);
                    }
                };
                h var14_22 = new h(this);
                var14_22.e = var10_7;
                var14_22.a(false).a("\u597d\u7684", (DialogInterface.OnClickListener) var12_9).b("\u4e0d\u4f7f\u7528", (DialogInterface.OnClickListener) var13_21).b();
            }
        }
        com.clilystudio.netbook.a_pack.e<String, Void, TopicCount> var7_10 = new com.clilystudio.netbook.a_pack.e<String, Void, TopicCount>(){

            @Override
            protected TopicCount doInBackground(String... params) {
                com.clilystudio.netbook.api.b.a();
                return com.clilystudio.netbook.api.b.b().I(params[0]);
            }

            @Override
            protected void onPostExecute(TopicCount topicCount) {
                super.onPostExecute(topicCount);
                if (topicCount != null && topicCount.isOk()) {
                    int n = 99;
                    ReaderWebActivity.a(ReaderWebActivity.this, topicCount.getCount());
                    int n2 = ReaderWebActivity.d(ReaderWebActivity.this) - BookTopicEnterRecord.get(ReaderWebActivity.e(ReaderWebActivity.this)).getVisitCount();
                    if (n2 <= 0) {
                        ReaderWebActivity.a(ReaderWebActivity.this).a(false);
                        return;
                    }
                    ReaderWebActivity.a(ReaderWebActivity.this).a(true);
                    ReaderWebActionBar readerWebActionBar = ReaderWebActivity.a(ReaderWebActivity.this);
                    if (n2 <= n) {
                        n = n2;
                    }
                    readerWebActionBar.setTopicCount(String.valueOf(n));
                }
            }
        };
        String[] var8_11 = new String[]{this.c};
        var7_10.b(var8_11);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        i.a().unregister(this);
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
