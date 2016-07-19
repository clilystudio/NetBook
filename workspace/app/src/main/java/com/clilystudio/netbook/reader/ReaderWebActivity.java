package com.clilystudio.netbook.reader;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;

import com.clilystudio.netbook.IntentBuilder;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.a_pack.BaseLoadingTask;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.db.SourceRecord;
import com.clilystudio.netbook.db.SourceWebReadRecord;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.ModeChangedEvent;
import com.clilystudio.netbook.model.TopicCount;
import com.clilystudio.netbook.model.mixtoc.EsTocItem;
import com.clilystudio.netbook.model.mixtoc.EsTocRoot;
import com.clilystudio.netbook.model.mixtoc.SgTocChapter;
import com.clilystudio.netbook.model.mixtoc.SgTocRoot;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.util.ToastUtil;
import com.squareup.otto.Subscribe;

import uk.me.lewisdeane.ldialogs.BaseDialog;

public class ReaderWebActivity extends BaseReadActivity {
    private int mBookMode;
    private String c;
    private String d;
    private String e;
    private String f;
    private ReaderWebActionBar g;
    private int h;

    public static Intent a(Context context, String string, String string2, String string3, String string4, int n) {
        return new IntentBuilder().put(context, ReaderWebActivity.class).put("BOOK_ID", string).put("BOOK_TITLE", string2).put("TOC_ID", string3).put("SOURCE_ID", string4).put("BOOK_MODE", n).build();
    }

    static SgTocChapter a(SgTocChapter[] arrsgTocChapter, String string) {
        for (SgTocChapter sgTocChapter : arrsgTocChapter) {
            if (!string.equals(sgTocChapter.getCmd())) continue;
            return sgTocChapter;
        }
        return null;
    }

    static void a(ReaderWebActivity readerWebActivity, int n, String string) {
        FragmentTransaction fragmentTransaction = readerWebActivity.getSupportFragmentManager().beginTransaction();
        String string2 = readerWebActivity.e;
        ReaderWebPageFragment readerWebPageFragment = (ReaderWebPageFragment) readerWebActivity.getSupportFragmentManager().findFragmentByTag(ReaderWebPageFragment.class.getName());
        if (readerWebPageFragment == null) {
            readerWebPageFragment = ReaderWebPageFragment.a(readerWebActivity.mBookMode, string2, n, string);
        }
        fragmentTransaction.replace(R.id.content_frame, readerWebPageFragment);
        try {
            fragmentTransaction.commitAllowingStateLoss();
        } catch (IllegalStateException var7_6) {
            var7_6.printStackTrace();
        }
    }

    static void a(ReaderWebActivity readerWebActivity, String string, String string2, String string3, String string4) {
        FragmentTransaction fragmentTransaction = readerWebActivity.getSupportFragmentManager().beginTransaction();
        String string5 = readerWebActivity.e;
        ReaderWebPageFragment readerWebPageFragment = (ReaderWebPageFragment) readerWebActivity.getSupportFragmentManager().findFragmentByTag(ReaderWebPageFragment.class.getName());
        if (readerWebPageFragment == null) {
            readerWebPageFragment = ReaderWebPageFragment.a(readerWebActivity.mBookMode, string, string5, string2, string3, string4);
        }
        fragmentTransaction.replace(R.id.content_frame, readerWebPageFragment);
        try {
            fragmentTransaction.commitAllowingStateLoss();
        } catch (IllegalStateException var9_8) {
            var9_8.printStackTrace();
        }
    }

    static void b(ReaderWebActivity readerWebActivity) {
        CommonUtil.putBoolPref(readerWebActivity, readerWebActivity.f, true);
        CommonUtil.putBoolPref(readerWebActivity, readerWebActivity.f + "source_web_alert", false);
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

    static void c(final ReaderWebActivity readerWebActivity) {
        final AlertDialog alertDialog = new AlertDialog.Builder(readerWebActivity).create();
        View view = LayoutInflater.from(readerWebActivity).inflate(R.layout.dialog_reader_web_opt2, (ViewGroup) readerWebActivity.getWindow().getDecorView(), false);
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
    }

    private void a(int n) {
        FragmentTransaction fragmentTransaction = this.getSupportFragmentManager().beginTransaction();
        String string = this.e;
        ReaderWebPageFragment readerWebPageFragment = (ReaderWebPageFragment) this.getSupportFragmentManager().findFragmentByTag(ReaderWebPageFragment.class.getName());
        if (readerWebPageFragment == null) {
            readerWebPageFragment = ReaderWebPageFragment.a(this.mBookMode, string, n);
        }
        fragmentTransaction.replace(R.id.content_frame, readerWebPageFragment);
        try {
            fragmentTransaction.commitAllowingStateLoss();
        } catch (IllegalStateException var6_5) {
            var6_5.printStackTrace();
        }
    }

    public final void a() {
        this.startActivity(ModeListActivity.a(this, this.c, this.d, this.mBookMode));
        this.overridePendingTransition(R.anim.mode_list_enter_in, R.anim.mode_list_enter_out);
    }

    @Override
    public void onCreate(Bundle var1_1) {
        super.onCreate(var1_1);
        this.setContentView(R.layout.activity_reader_web);
        BusProvider.getInstance().register(this);
        this.c = this.getIntent().getStringExtra("BOOK_ID");
        this.d = this.getIntent().getStringExtra("BOOK_TITLE");
        this.e = this.getIntent().getStringExtra("SOURCE_ID");
        this.mBookMode = var1_1 != null ? var1_1.getInt("savedCurrentMode", 5) : this.getIntent().getIntExtra("BOOK_MODE", 5);
        this.f = CommonUtil.getSourceName(this.mBookMode);
        this.g = (ReaderWebActionBar) this.findViewById(R.id.reader_web_action_bar);
        this.g.setTitle(this.d);
        this.g.setChapterLink(CommonUtil.getWebOptUrl(this.f));
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
                    case R.id.reader_ab_read_mode: {
                        ReaderWebActivity.this.a();
                        return;
                    }
                    case R.id.reader_ab_chapter_url_view:
                        ReaderWebActivity.b(ReaderWebActivity.this);
                }
            }
        });
        SourceWebReadRecord var2_2 = SourceWebReadRecord.get(this.c, this.mBookMode);
        final int[] var3_3 = {var2_2 != null ? var2_2.getChapterIndex() : 0};
        final String[] var17_14 = {null};
        switch (this.mBookMode) {
            default: {
                FragmentTransaction var27_4 = this.getSupportFragmentManager().beginTransaction();
                ReaderWebPageFragment var29_6 = (ReaderWebPageFragment) this.getSupportFragmentManager().findFragmentByTag(ReaderWebPageFragment.class.getName());
                if (var29_6 == null) {
                    var29_6 = ReaderWebPageFragment.a(this.mBookMode, this.e);
                }
                var27_4.replace(R.id.content_frame, var29_6).commit();
                break;
            }
            case 6: {
                BaseLoadingTask<String, String> var24_12 = new BaseLoadingTask<String, String>(this, R.string.loading) {
                    @Override
                    public String a(String... var1) {
                        return ApiServiceProvider.getApiService().b(var1[0], var3_3[0] + 1);
                    }

                    @Override
                    public void a(String var1) {
                        if (var1 == null) {
                            ToastUtil.showShortToast(ReaderWebActivity.this, "载入失败");
                        } else {
                            ReaderWebActivity.a(ReaderWebActivity.this, var3_3[0] + 1, var1);
                        }
                    }
                };
                String[] var25_13 = new String[]{this.e};
                var24_12.b(var25_13);
                break;
            }
            case 7: {
                var17_14[0] = var2_2 != null ? var2_2.getCmd() : null;
                if (BookReadRecord.get(this.c) != null || MyApplication.getInstance().getBookInfo() != null) {
//                    cJ(this, this, var3_3[0], var17_14);
                    BaseLoadingTask<String, SgTocRoot> var21_17 = new BaseLoadingTask<String, SgTocRoot>(this, R.string.loading) {

                        @Override
                        public SgTocRoot a(String... var1) {
                            return ApiServiceProvider.getApiService().s(var1[0]);
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
                                    sgTocChapter = ReaderWebActivity.a(arrsgTocChapter, var17_14[0]);
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
                                ToastUtil.showShortToast(ReaderWebActivity.this, "载入失败");
                                return;
                            }
                            ToastUtil.showShortToast(ReaderWebActivity.this, "载入失败");
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
                BaseLoadingTask<String, EsTocRoot> var4_19 = new BaseLoadingTask<String, EsTocRoot>(this, R.string.loading) {

                    @Override
                    public EsTocRoot a(String... var1) {
                        return ApiServiceProvider.getApiService().v(var1[0]);
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
                        ToastUtil.showShortToast(ReaderWebActivity.this, "载入失败");
                    }
                };
                String[] var5_20 = new String[]{this.e};
                var4_19.b(var5_20);
                break;
            }
        }
        if (CommonUtil.getBoolPref(this, this.f + "source_web_alert", true)) {
            final View var11_8 = LayoutInflater.from(this).inflate(R.layout.dialog_reader_web_opt, (ViewGroup) getWindow().getDecorView(), false);
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
            ((TextView) var11_8.findViewById(R.id.reader_web_opt_url)).setText(CommonUtil.getWebOptUrl(this.f));
            new BaseDialog.Builder(this).setView(var11_8).setCancelable(false)
                    .setPositiveButton("好的", var12_9).show();
        }
        BaseAsyncTask<String, Void, TopicCount> var7_10 = new BaseAsyncTask<String, Void, TopicCount>() {

            @Override
            protected TopicCount doInBackground(String... params) {
                ApiServiceProvider.getInstance();
                return ApiServiceProvider.getApiService().I(params[0]);
            }

            @Override
            protected void onPostExecute(TopicCount topicCount) {
                super.onPostExecute(topicCount);
                if (topicCount != null && topicCount.isOk()) {
                    ReaderWebActivity.this.h = topicCount.getCount();
                    int n2 = ReaderWebActivity.this.h - BookTopicEnterRecord.get(ReaderWebActivity.this.c).getVisitCount();
                    ReaderWebActivity.this.g.a(n2 > 0);
                }
            }
        };
        String[] var8_11 = new String[]{this.c};
        var7_10.b(var8_11);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        BusProvider.getInstance().unregister(this);
    }

    @Subscribe
    public void onModeChanged(ModeChangedEvent v2) {
        this.finish();
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("savedCurrentMode", this.mBookMode);
    }
}
