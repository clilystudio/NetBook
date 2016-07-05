package com.clilystudio.netbook.reader;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.graphics.drawable.ColorDrawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v4.view.PagerAdapter;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.PopupMenu;
import android.widget.PopupWindow;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.db.MixTocRecord;
import com.clilystudio.netbook.db.TocReadRecord;
import com.clilystudio.netbook.event.C;
import com.clilystudio.netbook.event.j;
import com.clilystudio.netbook.event.v;
import com.clilystudio.netbook.model.ChapterKeysRoot;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.TopicCount;
import com.clilystudio.netbook.ui.BaseReadSlmActivity;
import com.clilystudio.netbook.ui.BookInfoActivity;
import com.clilystudio.netbook.util.ae;
import com.clilystudio.netbook.util.k;
import com.clilystudio.netbook.widget.ThemeLoadingView;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;
import com.squareup.otto.Subscribe;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

import uk.me.lewisdeane.ldialogs.BaseDialog;

public class ReaderActivity extends BaseReadSlmActivity implements View.OnClickListener,
        AutoReaderSetWidget.a,
        AutoReaderTextView.d_interface {
    public static String a = "";
    private int A;
    private View B;
    private TextView C;
    private String D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I = false;
    private boolean J = false;
    private boolean K = false;
    private int L;
    private int M = 0;
    private boolean N;
    private ThemeLoadingView O;
    private int P;
    private int Q;
    private ReaderMenuFragment r_fragment = null;
    private PopupWindow S;
    private AutoReaderTextView T;
    private View U;
    private int W;
    private int X;
    private String[] Y;
    private int Z = 0;
    private LinkedList<Integer> aa;
    private PowerManager.WakeLock ab = null;
    private Runnable ad;
    private BroadcastReceiver ae;
    private Handler af;
    private BroadcastReceiver ag;
    private BroadcastReceiver ah;
    private o[] b = new o[3];
    private String c;
    private String d;
    private String e;
    private String f;
    private Reader g;
    private bZ h;
    private bH i;
    private K j;
    private ReaderTocDialog k;
    private Handler l = new Handler();
    private PagerWidget m;
    private int n;
    private boolean o = true;
    private boolean p = true;
    private View q;
    private ReaderActionBar r;
    private SettingWidget s;
    private AutoReaderSetWidget t;
//    private boolean v = false;
    private int w = -1;
    private LinkedList<String> x = new LinkedList<>();
    private int y;
    private int z;

    public ReaderActivity() {
        this.ad = new Runnable() {
            @Override
            public void run() {
                getWindow().clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
            }
        };
        this.ae = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                if ("com.clilystudio.netbook.dlReceiver".equals(intent.getAction())) {
                    String string = intent.getStringExtra("bookId");
                    if (ReaderActivity.M(ReaderActivity.this).equals(string)) {
                        ReaderActivity.g(ReaderActivity.this, true);
                        ReaderActivity.l(ReaderActivity.this, intent.getIntExtra("SerDlCurrentCount", 0));
                        ReaderActivity.k(ReaderActivity.this, intent.getIntExtra("SerDlChapterCount", 0));
                        ReaderActivity.a(ReaderActivity.this, intent.getStringExtra("SerDlLink"));
                        ReaderActivity.m(ReaderActivity.this, intent.getIntExtra("SerDlStopFlag", 0));
                        ReaderActivity.aj(ReaderActivity.this).sendMessage(ReaderActivity.aj(ReaderActivity.this).obtainMessage());
                    }
                }
            }
        };
        this.af = new Handler() {

            @Override
            public void handleMessage(Message msg) {
                super.handleMessage(msg);
                String string = "";
                if (ReaderActivity.ak(ReaderActivity.this) == 0 && ReaderActivity.al(ReaderActivity.this) < ReaderActivity.ai(ReaderActivity.this)) {
                    string = "正在缓存: " + ReaderActivity.D(ReaderActivity.this) + " ( " + ReaderActivity.al(ReaderActivity.this) + "/" + ReaderActivity.ai(ReaderActivity.this) + " )...";
                } else if (ReaderActivity.ak(ReaderActivity.this) == -1 || ReaderActivity.al(ReaderActivity.this) >= ReaderActivity.ai(ReaderActivity.this)) {
                    string = "缓存完成: " + ReaderActivity.D(ReaderActivity.this);
                } else if (ReaderActivity.ak(ReaderActivity.this) == -2) {
                    string = "已停止: " + ReaderActivity.D(ReaderActivity.this) + " ( " + ReaderActivity.al(ReaderActivity.this) + "/" + ReaderActivity.ai(ReaderActivity.this) + " )";
                }
                ReaderActivity.am(ReaderActivity.this).setText(string);
                ReaderActivity.this.x.add(ReaderActivity.an(ReaderActivity.this));

            }
        };
        this.ag = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                int n2 = intent.getIntExtra("level", 0);
                int n3 = intent.getIntExtra("scale", 100);
                int n4 = n2 * 100 / n3;
                if (ReaderActivity.ap(ReaderActivity.this) != n4) {
                    ReaderActivity.n(ReaderActivity.this, n4);
                    o[] arro = ReaderActivity.i(ReaderActivity.this);
                    for (com.clilystudio.netbook.reader.o anArro : arro) {
                        anArro.a(n4);
                    }
                }
            }
        };
        this.ah = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                o[] arro = ReaderActivity.i(ReaderActivity.this);
                for (com.clilystudio.netbook.reader.o anArro : arro) {
                    anArro.k();
                }
            }
        };
    }

    static /* synthetic */ ReaderActionBar A(ReaderActivity readerActivity) {
        return readerActivity.r;
    }

    static /* synthetic */ void B(ReaderActivity readerActivity) {
        readerActivity.G = !readerActivity.G;
        readerActivity.r();
        com.clilystudio.netbook.hpay100.a.a.b(readerActivity, "reader_orientation", readerActivity.G);
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void C(final ReaderActivity readerActivity) {
        if (readerActivity.J || readerActivity.K) {
            com.clilystudio.netbook.util.e.a(readerActivity, "缓存不可用");
            return;
        }
        boolean bl = com.clilystudio.netbook.am.g(readerActivity.c) == 2;
        if (bl) {
            new BaseDialog.Builder(readerActivity).setTitle(R.string.tips).setMessage(R.string.chapter_dl_doing_msg).setPositiveButton(R.string.chapter_dl_goon, new DialogInterface.OnClickListener() {

                @Override
                public void onClick(DialogInterface dialog, int which) {
                    dialog.dismiss();
                }
            }).setNegativeButton(R.string.stop, new DialogInterface.OnClickListener() {

                @Override
                public void onClick(DialogInterface dialog, int which) {
                    dialog.dismiss();
                    com.clilystudio.netbook.event.i.a().post(new com.clilystudio.netbook.event.d(ReaderActivity.M(readerActivity), 3));
                }
            }).show();
        } else {
            CharSequence[] arrcharSequence = new String[]{readerActivity.getString(R.string.chapter_dl_count_50), readerActivity.getString(R.string.chapter_dl_count_after), readerActivity.getString(R.string.all)};
            new BaseDialog.Builder(readerActivity).setTitle(R.string.chapter_dl_title).setSingleChoiceItems(arrcharSequence, 0, new DialogInterface.OnClickListener() {

                @Override
                public void onClick(DialogInterface dialog, int which) {
                    int n3 = 1;
                    int n4 = ReaderActivity.Y(readerActivity).k();
                    if (which == 0) {
                        ReaderActivity.k(readerActivity, 50);
                    } else if (which == n3) {
                        ReaderActivity.k(readerActivity, ReaderActivity.Y(readerActivity).f() - n4);
                    } else if (which == 2) {
                        ReaderActivity.k(readerActivity, ReaderActivity.Y(readerActivity).f());
                        n4 = 0;
                    }
                    if (BookReadRecord.getOnShelf(ReaderActivity.M(readerActivity)) == null) {
                        n3 = 0;
                    }
                    if (n3 == 0) {
                        ReaderActivity.ad(readerActivity);
                    }
                    ReaderActivity.ah(readerActivity).setVisibility(View.VISIBLE);
                    com.clilystudio.netbook.reader.dl.a a2 = new com.clilystudio.netbook.reader.dl.a(readerActivity);
                    MyApplication.a().e().put(ReaderActivity.M(readerActivity), ReaderActivity.Y(readerActivity).d());
                    a2.a(ReaderActivity.M(readerActivity), n4, ReaderActivity.ai(readerActivity));
                }
            }).create().show();
        }
    }

    static /* synthetic */ String D(ReaderActivity readerActivity) {
        return readerActivity.d;
    }
//
//    static /* synthetic */ void E(ReaderActivity readerActivity) {
//        if (readerActivity.ab == null) {
//            readerActivity.ab = ((PowerManager) readerActivity.getSystemService(POWER_SERVICE)).newWakeLock(1, "lock_tag");
//            if (readerActivity.ab != null) {
//                readerActivity.ab.acquire();
//            }
//        }
//
//    }
//
//    static /* synthetic */ String[] H(ReaderActivity readerActivity) {
//        return readerActivity.Y;
//    }
//
//    static /* synthetic */ LinkedList I(ReaderActivity readerActivity) {
//        return readerActivity.aa;
//    }

    static /* synthetic */ void L(ReaderActivity readerActivity) {
        readerActivity.O();
    }

    static /* synthetic */ String M(ReaderActivity readerActivity) {
        return readerActivity.c;
    }

    static /* synthetic */ void N(ReaderActivity readerActivity) {
        readerActivity.O.a();
    }

    static /* synthetic */ boolean O(ReaderActivity readerActivity) {
        return readerActivity.I;
    }

    static /* synthetic */ void P(ReaderActivity readerActivity) {
        readerActivity.O.b();
    }

    static /* synthetic */ void Q(ReaderActivity readerActivity) {
        readerActivity.B();
    }

    static /* synthetic */ void R(ReaderActivity readerActivity) {
        readerActivity.u();
    }

    static /* synthetic */ void S(ReaderActivity readerActivity) {
        readerActivity.v();
    }

    static /* synthetic */ bH T(ReaderActivity readerActivity) {
        return readerActivity.i;
    }

    static /* synthetic */ void U(ReaderActivity readerActivity) {
        readerActivity.y();
    }

    static /* synthetic */ void V(ReaderActivity readerActivity) {
        readerActivity.z();
    }

    static /* synthetic */ void W(ReaderActivity readerActivity) {
        readerActivity.F();
    }

    static /* synthetic */ void X(ReaderActivity readerActivity) {
        readerActivity.x();
    }

    static /* synthetic */ Reader Y(ReaderActivity readerActivity) {
        return readerActivity.g;
    }

    static /* synthetic */ void Z(ReaderActivity readerActivity) {
        readerActivity.t();
    }

    static /* synthetic */ int a(ReaderActivity readerActivity, int n2) {
        readerActivity.M = n2;
        return n2;
    }

    public static Intent a(Context context, String string, String string2, String string3, String string4, boolean bl) {
        return new d().a(context, ReaderActivity.class).a("BOOK_ID", string).a("BOOK_TITLE", string2).a("TOC_ID", string3).a("SOURCE_HOST", string4).a("IS_SHOW_TOC", bl).a();
    }

    public static Intent a(Context context, String string, String string2, String string3, HashMap<String, String> hashMap, boolean bl2) {
        return new d().a(context, ReaderActivity.class).a("BOOK_ID", string).a("BOOK_TITLE", string2).a("TOC_ID", string3).a("SOURCE_HOST", (String) null).a("IS_SHOW_TOC", false).a("CHAPTERS_KEY", hashMap).a("HAS_OTHER_SOURCES", bl2).a();
    }

    public static Intent a(Context context, String string, String string2, String string3, boolean bl2) {
        return new d().a(context, ReaderActivity.class).a("BOOK_ID", string).a("BOOK_TITLE", string2).a("TOC_ID", string3).a("SOURCE_HOST", (String) null).a("IS_SHOW_TOC", false).a("HAS_OTHER_SOURCES", bl2).a();
    }

    static /* synthetic */ String a(ReaderActivity readerActivity, String string) {
        readerActivity.D = string;
        return string;
    }

    static /* synthetic */ LinkedList a(ReaderActivity readerActivity, LinkedList<Integer> linkedList) {
        readerActivity.aa = linkedList;
        return linkedList;
    }

    static /* synthetic */ void a(ReaderActivity readerActivity) {
        readerActivity.G();
    }

    static /* synthetic */ void a(final ReaderActivity readerActivity, View view) {
        PopupMenu popupMenu = new PopupMenu(readerActivity, view, 53);
        popupMenu.getMenuInflater().inflate(R.menu.reader_more_menu, popupMenu.getMenu());
        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() {
            @Override
            public boolean onMenuItemClick(MenuItem item) {
                switch (item.getItemId()) {
                    case R.id.menu_item_1:
                        ReaderActivity.L(readerActivity);
                        break;
                    case R.id.menu_item_2:
                        Intent var2_2 = BookInfoActivity.a(readerActivity, ReaderActivity.M(readerActivity));
                        readerActivity.startActivity(var2_2);
                        break;
                }
                return true;
            }
        });
        popupMenu.show();
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(final ReaderActivity readerActivity, final n n2) {
        if (!n2.f()) {
            readerActivity.b[0].a(n2, true);
            readerActivity.m.setCurrentItem(0, false);
            n2.a(new e<n>() {

                @Override
                public void a(n var1) {
                    ReaderActivity.i(readerActivity)[1].a(var1);
                    if (var1 != null) {
                        var1.a(new e<n>() {

                            @Override
                            public void a(n var11) {
                                ReaderActivity.i(readerActivity)[2].a(var11);
                                ReaderActivity.X(readerActivity);
                            }
                        });
                    }
                }
            });
        } else if (!n2.e()) {
            readerActivity.b[2].a(n2, true);
            readerActivity.m.setCurrentItem(2, false);
            n2.b(new e<n>() {

                @Override
                public void a(n var1) {
                    ReaderActivity.i(readerActivity)[1].a(var1);
                    n2.b(new e<n>() {
                        @Override
                        public void a(n var11) {
                            ReaderActivity.i(readerActivity)[0].a(var11);
                            ReaderActivity.X(readerActivity);
                        }
                    });
                }
            });
        } else {
            readerActivity.b[1].a(n2, true);
            readerActivity.m.setCurrentItem(1, false);
            n2.a(new e<n>() {

                @Override
                public void a(n var1) {
                    ReaderActivity.i(readerActivity)[2].a(var1);
                    n2.b(new e<n>() {

                        @Override
                        public void a(n var11) {
                            ReaderActivity.i(readerActivity)[0].a(var11);
                            ReaderActivity.X(readerActivity);
                        }
                    });

                }
            });
        }
        if (readerActivity.M == 1) {
            readerActivity.M();
        }
        readerActivity.a(n2);
    }
//
//    static /* synthetic */ boolean a(ReaderActivity readerActivity, boolean bl) {
//        readerActivity.v = bl;
//        return bl;
//    }

    static /* synthetic */ String[] a(ReaderActivity readerActivity, String[] arrstring) {
        readerActivity.Y = arrstring;
        return arrstring;
    }

    static /* synthetic */ int aa(ReaderActivity readerActivity) {
        return readerActivity.L;
    }

    static /* synthetic */ ReaderTocDialog ab(ReaderActivity readerActivity) {
        return readerActivity.k;
    }

    static /* synthetic */ boolean ac(ReaderActivity readerActivity) {
        return readerActivity.H;
    }

    static /* synthetic */ void ad(ReaderActivity readerActivity) {
        if (com.clilystudio.netbook.am.f()) {
            com.clilystudio.netbook.util.e.a(readerActivity, readerActivity.getString(R.string.book_add_overflow));
            return;
        }
        readerActivity.g.a();
        com.clilystudio.netbook.hpay100.a.a.u(readerActivity.c);
        String string = readerActivity.getString(R.string.add_book_event);
        Object[] arrobject = new Object[]{readerActivity.d};
        com.clilystudio.netbook.util.e.a(readerActivity, String.format(string, arrobject));
    }

    static /* synthetic */ void ag(ReaderActivity readerActivity) {
        CharSequence charSequence = readerActivity.r.b().getText();
        if (charSequence != null) {
            com.clilystudio.netbook.am.a(readerActivity, charSequence.toString(), null);
        }
    }

    static /* synthetic */ View ah(ReaderActivity readerActivity) {
        return readerActivity.B;
    }

    static /* synthetic */ int ai(ReaderActivity readerActivity) {
        return readerActivity.z;
    }

    static /* synthetic */ Handler aj(ReaderActivity readerActivity) {
        return readerActivity.af;
    }

    static /* synthetic */ int ak(ReaderActivity readerActivity) {
        return readerActivity.A;
    }

    static /* synthetic */ int al(ReaderActivity readerActivity) {
        return readerActivity.y;
    }

    static /* synthetic */ TextView am(ReaderActivity readerActivity) {
        return readerActivity.C;
    }

    static /* synthetic */ String an(ReaderActivity readerActivity) {
        return readerActivity.D;
    }
//
//    static /* synthetic */ LinkedList ao(ReaderActivity readerActivity) {
//        return readerActivity.x;
//    }

    static /* synthetic */ int ap(ReaderActivity readerActivity) {
        return readerActivity.w;
    }

    static /* synthetic */ int b(ReaderActivity readerActivity, int n2) {
        readerActivity.W = n2;
        return n2;
    }

    static /* synthetic */ void b(ReaderActivity readerActivity, View view) {
        View view2 = readerActivity.getLayoutInflater().inflate(R.layout.reader_popupwindow_layout, (ViewGroup)readerActivity.getWindow().getDecorView(), false);
        view2.findViewById(R.id.menu_item_1).setOnClickListener(readerActivity);
        view2.findViewById(R.id.menu_item_2).setOnClickListener(readerActivity);
        view2.findViewById(R.id.menu_item_3).setOnClickListener(readerActivity);
        readerActivity.S = new PopupWindow(view2, readerActivity.getResources().getDimensionPixelSize(R.dimen.reader_popup_width), -2);
        readerActivity.S.setFocusable(true);
        readerActivity.S.setOutsideTouchable(true);
        readerActivity.S.setBackgroundDrawable(new ColorDrawable(0));
        readerActivity.S.getContentView().setFocusableInTouchMode(true);
        readerActivity.S.getContentView().setFocusable(true);
        int[] arrn = new int[2];
        view.getLocationOnScreen(arrn);
        readerActivity.S.showAtLocation(view, 0, arrn[0] - readerActivity.S.getWidth() + view.getWidth(), com.clilystudio.netbook.am.l(readerActivity) + com.clilystudio.netbook.am.k(readerActivity));
    }

    static /* synthetic */ boolean b(ReaderActivity readerActivity, boolean bl) {
        readerActivity.H = bl;
        return bl;
    }

    static /* synthetic */ int c(ReaderActivity readerActivity, int n2) {
        readerActivity.X = n2;
        return n2;
    }

    static /* synthetic */ void c(ReaderActivity readerActivity, boolean bl) {
        readerActivity.a(bl);
    }

    static /* synthetic */ int d(ReaderActivity readerActivity) {
        return readerActivity.Q;
    }

    static /* synthetic */ int d(ReaderActivity readerActivity, int n2) {
        readerActivity.Z = n2;
        return n2;
    }

    static /* synthetic */ boolean d(ReaderActivity readerActivity, boolean bl) {
        readerActivity.J = bl;
        return bl;
    }

    static /* synthetic */ ReaderMenuFragment e(ReaderActivity readerActivity) {
        return readerActivity.r_fragment;
    }

    static /* synthetic */ boolean e(ReaderActivity readerActivity, boolean bl) {
        readerActivity.I = bl;
        return bl;
    }

    static /* synthetic */ void f(ReaderActivity readerActivity) {
        readerActivity.H();
    }

    static /* synthetic */ void f(ReaderActivity readerActivity, int n2) {
        readerActivity.b(n2);
    }

    static /* synthetic */ boolean f(ReaderActivity readerActivity, boolean bl) {
        readerActivity.p = bl;
        return bl;
    }

    static /* synthetic */ int g(ReaderActivity readerActivity) {
        return readerActivity.M;
    }

    static /* synthetic */ int g(ReaderActivity readerActivity, int n2) {
        readerActivity.n = n2;
        return n2;
    }

    static /* synthetic */ boolean g(ReaderActivity readerActivity, boolean bl) {
        readerActivity.E = bl;
        return bl;
    }

    static /* synthetic */ PagerWidget h(ReaderActivity readerActivity) {
        return readerActivity.m;
    }

    static /* synthetic */ void h(ReaderActivity readerActivity, int n2) {
        readerActivity.c(n2);
    }

    static /* synthetic */ int i(ReaderActivity readerActivity, int n2) {
        readerActivity.P = n2;
        return n2;
    }

    static /* synthetic */ o[] i(ReaderActivity readerActivity) {
        return readerActivity.b;
    }

    static /* synthetic */ int j(ReaderActivity readerActivity) {
        return readerActivity.n;
    }

    static /* synthetic */ int j(ReaderActivity readerActivity, int n2) {
        readerActivity.Q = n2;
        return n2;
    }

    static /* synthetic */ int k(ReaderActivity readerActivity, int n2) {
        readerActivity.z = n2;
        return n2;
    }

    static /* synthetic */ AutoReaderTextView k(ReaderActivity readerActivity) {
        return readerActivity.T;
    }

    static /* synthetic */ int l(ReaderActivity readerActivity, int n2) {
        readerActivity.y = n2;
        return n2;
    }

    static /* synthetic */ bZ l(ReaderActivity readerActivity) {
        return readerActivity.h;
    }

    static /* synthetic */ int m(ReaderActivity readerActivity, int n2) {
        readerActivity.A = n2;
        return n2;
    }

    static /* synthetic */ n m(ReaderActivity readerActivity) {
        return readerActivity.A();
    }

    static /* synthetic */ int n(ReaderActivity readerActivity, int n2) {
        readerActivity.w = n2;
        return n2;
    }

    static /* synthetic */ void n(ReaderActivity readerActivity) {
        readerActivity.N();
    }
//
//    static /* synthetic */ void p(ReaderActivity readerActivity) {
//        if (readerActivity.b[readerActivity.n].f()) {
//            readerActivity.o();
//        } else {
//            if (readerActivity.Y == null) {
//                com.clilystudio.netbook.util.e.a(readerActivity, "获取章节内容失败,请退出后重试");
//            } else if (readerActivity.Z <= readerActivity.Y.length - 1) {
//                readerActivity.b[readerActivity.n].a(readerActivity.W, readerActivity.X);
//            }
//        }
//    }

    static /* synthetic */ void t(ReaderActivity readerActivity) {
        readerActivity.T.setHeight(readerActivity.h.e);
        readerActivity.T.setTextSize(0, readerActivity.h.a);
        readerActivity.T.setLineSpacing(readerActivity.h.b, 1.0f);
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void u(ReaderActivity readerActivity) {
        if (readerActivity.h.h == R.drawable.reader_background_brown_big_img) {
            readerActivity.T.setBackgroundResource(R.drawable.reader_background_brown_auto_img);
        } else {
            readerActivity.T.setBackgroundResource(readerActivity.h.h);
        }
        readerActivity.T.setTextColor(readerActivity.h.g);
    }

    static /* synthetic */ void v(ReaderActivity readerActivity) {
        readerActivity.R();
    }

    static /* synthetic */ SettingWidget w(ReaderActivity readerActivity) {
        return readerActivity.s;
    }

    static /* synthetic */ void x(ReaderActivity readerActivity) {
        if (readerActivity.J || readerActivity.K) {
            com.clilystudio.netbook.util.e.a(readerActivity, "\u76ee\u5f55\u4e0d\u53ef\u7528");
            return;
        }
        readerActivity.D();
    }

    static /* synthetic */ void y(final ReaderActivity readerActivity) {
        BaseDialog.Builder h2 = new BaseDialog.Builder(readerActivity);
        h2.setMessage("是否使用原网页阅读？");
        h2.setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {

            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                ReaderActivity.ag(readerActivity);
            }
        }).setNegativeButton(R.string.cancel, null).show();
    }

    private n A() {
        o o2 = this.b[this.n];
        if (o2 != null) {
            return o2.j();
        }
        return null;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void B() {
        if (this.H) {
            this.j.a(this.g);
        }
        this.m.setOnPageChangeListener(new ReaderViewPager.cw() {
            @Override
            public void a(int var1) {
                ReaderActivity.g(ReaderActivity.this, var1);
            }

            @Override
            public void b(int var1) {
                if (var1 == 2) {
                    ReaderActivity.f(ReaderActivity.this);
                } else if (var1 == 0) {
                    ReaderActivity.S(ReaderActivity.this);
                }
            }
        });
        this.m.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                switch ((int) v.getTag()) {
                    case 0:
                        ReaderActivity.W(ReaderActivity.this);
                        break;
                    case 1:
                        if (ReaderActivity.T(ReaderActivity.this).e()) {
                            ReaderActivity.U(ReaderActivity.this);
                        } else {
                            ReaderActivity.V(ReaderActivity.this);
                        }
                        break;
                    case 2:
                        ReaderActivity.U(ReaderActivity.this);
                        break;
                }
            }
        });
        if (this.c.equals(MyApplication.a().g())) {
            int i = -1;
            BookReadRecord bookReadRecord = BookReadRecord.getOnShelf(this.c);
            if (bookReadRecord != null && this.g != null) {
                int tocIndex = bookReadRecord.getTocIndex();
                String chapterTitle = bookReadRecord.getChapterTitle();
                i = this.g.g();
                if (tocIndex <= i) {
                    i = tocIndex;
                }
                com.clilystudio.netbook.util.ae ae2 = new ae();
                if (!this.a(ae2, chapterTitle, i)) {
                    i = 1;
                    for (int i1 = 0; i1 < 20; i1++) {
                        if (i1 % 2 == 1) {
                            if (this.a(ae2, chapterTitle, tocIndex - i)) {
                                i = tocIndex - i;
                                break;
                            }
                            i++;
                        } else {
                            if (this.a(ae2, chapterTitle, tocIndex + i)) {
                                i = tocIndex + i;
                                break;
                            }
                        }
                    }
                }
            }
            if (i != -1) {
                this.g.a(i, 0);
            }
            MyApplication.a().c(null);
        }
        MyApplication.a().a(this.g);
        if (!this.q() && !com.clilystudio.netbook.hpay100.a.a.h(this.L)) {
            if (!this.I || this.H) {
                this.g();
            } else {
                this.D();
            }
        } else {
            if ((!this.q() && TocReadRecord.get(this.e) == null) || MixTocRecord.get(this.e) == null) {
                this.c(0);
            } else {
                this.g();
            }
        }
    }

    private void C() {
        o.G aL2 = new o.G() {
            @Override
            public void a(int var1) {
                ReaderActivity.h(ReaderActivity.this, var1);
            }
        };
        o.H aM2 = new o.H() {
            @Override
            public void a() {
                ReaderActivity.Z(ReaderActivity.this);
            }
        };
        com.clilystudio.netbook.reader.o.F aN2 = new com.clilystudio.netbook.reader.o.F() {
            @Override
            public void a() {
                if (ReaderActivity.aa(ReaderActivity.this) == 5 || ReaderActivity.aa(ReaderActivity.this) == 10) {
                    ReaderActivity.this.i();
                } else {
                    ReaderActivity.L(ReaderActivity.this);
                }
            }
        };
        for (int k = 0; k < 3; ++k) {
            o o2;
            this.b[k] = o2 = new o(this, this.h);
            o2.a(aL2);
            o2.a(aM2);
            o2.a(aN2);
        }
        this.registerReceiver(this.ag, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        this.registerReceiver(this.ah, new IntentFilter("android.intent.action.TIME_TICK"));
    }

    private void D() {
        if (this.isFinishing()) {
            return;
        }
        if (this.k == null) {
            this.k = ReaderTocDialog.a();
            this.k.a(this.g, this.x);
            this.k.a(new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    ReaderActivity.h(ReaderActivity.this, which);
                    ReaderActivity.ab(ReaderActivity.this).dismiss();
                }
            });
            this.k.a(new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    if (ReaderActivity.O(ReaderActivity.this) && !ReaderActivity.ac(ReaderActivity.this)) {
                        ReaderActivity.this.finish();
                    }
                }
            });
            this.k.a(new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    ReaderActivity.e(ReaderActivity.this, false);
                }
            });
        }
        com.clilystudio.netbook.hpay100.a.a.a(this, this.k);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void E() {
        if (this.b == null) {
            return;
        }
        o[] arro = this.b;
        int n2 = arro.length;
        int n3 = 0;
        while (n3 < n2) {
            ReaderChapter readerChapter;
            n n4 = arro[n3].j();
            if (n4 != null && (readerChapter = n4.a()) != null) {
                readerChapter.setMaxIndex(this.g.g());
            }
            ++n3;
        }
    }

    private void F() {
        if (this.o) {
            this.H();
            return;
        }
        this.G();
    }

    /*
     * Enabled aggressive block sorting
     */
    @SuppressLint(value = {"NewApi"})
    private void G() {
        if (this.o) return;
        {
            this.o = true;
            if (this.M == 0) {
                this.r.setVisibility(View.VISIBLE);
                this.getWindow().addFlags(2048);
                this.getWindow().clearFlags(1024);
                if (this.E) {
                    this.B.setVisibility(View.VISIBLE);
                }
                n n2 = this.A();
                String string = null;
                if (n2 != null) {
                    ReaderChapter readerChapter = n2.a();
                    string = null;
                    if (readerChapter != null) {
                        string = n2.a().getLink();
                    }
                }
                this.r.setChapterLink(string);
                if (com.clilystudio.netbook.hpay100.a.a.h() && !this.p) {
                    this.q.setSystemUiVisibility(0);
                }
            } else {
                if (this.M == 1) {
                    this.T.clearAnimation();
                    this.t.a();
                }
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @SuppressLint(value = {"NewApi"})
    private void H() {
        if (this.o) {
            this.o = false;
            this.r.setVisibility(View.GONE);
            this.s.setVisibility(View.GONE);
            this.t.b();
            if (this.M == 1) {
                this.T.e();
            }
            this.B.setVisibility(View.GONE);
            this.getWindow().addFlags(1024);
            this.getWindow().clearFlags(2048);
            if (this.F) {
                this.getWindow().addFlags(512);
            } else {
                this.getWindow().addFlags(2048);
                this.getWindow().clearFlags(1024);
                this.getWindow().clearFlags(512);
                if (com.clilystudio.netbook.hpay100.a.a.h() && this.p) {
                    this.q.setSystemUiVisibility(0);
                }
            }
            com.clilystudio.netbook.hpay100.a.a.a(this.q);
        }
        if (this.i.f()) {
            if (com.clilystudio.netbook.hpay100.a.a.h() && this.p) {
                this.q.setSystemUiVisibility(2055);
            }
        } else {
            if (com.clilystudio.netbook.hpay100.a.a.h() && this.p) {
                this.q.setSystemUiVisibility(1);
            }
        }
    }

    private void I() {
        this.T.setVisibility(View.GONE);
        this.U.setVisibility(View.GONE);
    }

    private void J() {
        this.F = com.clilystudio.netbook.hpay100.a.a.l(this, "reader_opt_full_screen");
        this.r.a(this.F);
        this.H();
    }

    private void K() {
        this.l.removeCallbacks(this.ad);
        int n2 = this.i.d();
        if (n2 != 0) {
            this.l.postDelayed(this.ad, n2);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void L() {
        this.T.clearAnimation();
        this.M = 0;
        this.m.setReadMode(0);
        this.H();
        this.I();
        if (this.o) {
            this.H();
        } else {
            n n2 = this.A();
            if (n2 != null && n2.f()) {
                this.m.setCurrentItem(-1 + this.n, false);
                this.v();
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void M() {
        if (this.b[this.n].f()) {
            this.L();
            return;
        }
        if (!this.T.isShown()) {
            this.T.setVisibility(View.VISIBLE);
            if (this.h.h()) {
                this.U.setBackgroundResource(R.drawable.auto_reader_bottom_shadow_night);
            } else {
                this.U.setBackgroundResource(R.drawable.auto_reader_bottom_shadow);
            }
            this.U.setVisibility(View.VISIBLE);
        }
        this.T.a();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void N() {
        n n2 = this.A();
        if (n2 == null) {
            return;
        }
        this.E();
        if (!n2.e() && this.w()) {
            com.clilystudio.netbook.util.e.a(this, this.getString(R.string.auto_reader_end_notify));
            this.T.clearAnimation();
            this.I();
            this.M = 0;
            this.m.setReadMode(0);
            return;
        }
        if (this.M == 1) {
            if (this.h.i()) {
                this.T.setText(n2.a(this));
            } else {
                this.T.setText(n2.c());
            }
            this.T.b();
        }
        this.m.setCurrentItem(1 + this.n, false);
        this.v();
    }

    private void O() {
        this.P();
        this.startActivity(ModeListActivity.a(this, this.c, this.d, this.L));
        this.overridePendingTransition(R.anim.mode_list_enter_in, R.anim.mode_list_enter_out);
    }

    private void P() {
        BookReadRecord bookReadRecord;
        if (this.g != null && (bookReadRecord = BookReadRecord.get(this.c)) != null) {
            bookReadRecord.setTocIndex(this.g.k());
            bookReadRecord.setChapterTitle(this.g.n());
            bookReadRecord.save();
        }
    }

    private void Q() {
        if (com.clilystudio.netbook.hpay100.a.a.d()) {
            for (String s1 : com.clilystudio.netbook.hpay100.a.a.j(this.c, this.e)) {
                String string = am.f(s1);
                this.x.add(string);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void R() {
        WindowManager.LayoutParams layoutParams = this.getWindow().getAttributes();
        layoutParams.screenBrightness = this.h.g() ? -1.0f : (float) this.h.f() / 255.0f;
        this.getWindow().setAttributes(layoutParams);
    }

    private String a(String string) {
        return this.getIntent().getStringExtra(string);
    }

    private void a(n n2) {
        if (n2 == null) {
            return;
        }
        SlidingMenu slidingMenu = this.getSlidingMenu();
        if (this.J || this.K) {
            slidingMenu.setSlidingEnabled(false);
            return;
        }
        if (n2.e()) {
            slidingMenu.setSlidingEnabled(false);
            return;
        }
        slidingMenu.setSlidingEnabled(true);
    }

    private void a(boolean bl) {
        if (this.b[this.n].f()) {
            this.o();
        } else {
            if (this.Y == null) {
                com.clilystudio.netbook.util.e.a(this, "获取章节内容失败,请退出后重试");
            } else if (bl && !this.Y[0].startsWith("　　")) {
                this.W = 0;
                this.X = 1 + this.Y[0].length();
                this.b[this.n].a(this.W, this.X);
            } else {
                this.W = this.X;
                if (this.Z <= -1 + this.Y.length) {
                    this.X = 1 + (this.W + this.Y[this.Z].length());
                    this.b[this.n].a(this.W, this.X);
                }
            }
        }
    }

    private boolean a(com.clilystudio.netbook.util.ae ae2, String string, int n2) {
        boolean bl = ae2.a(string, this.g.c(n2));
        boolean bl2 = false;
        if (bl) {
            this.g.a(n2);
            this.g.b(0);
            bl2 = true;
        }
        return bl2;
    }

    private void b(int n2) {
        this.j.a(new e<n>() {

            @Override
            public void a(n var1) {
                ReaderActivity.a(ReaderActivity.this, var1);
            }
        }, n2);
    }

    private void c(int n2) {
        this.j.b(n2, new e<n>() {

            @Override
            public void a(n var1) {
                 ReaderActivity.a(ReaderActivity.this, var1);
                if (ReaderActivity.g(ReaderActivity.this) == 2 && var1 != null) {
                    Object[] arrobject = var1.d();
                    if (arrobject != null) {
                        ReaderActivity.a(ReaderActivity.this, (String[]) arrobject[0]);
                        ReaderActivity.a(ReaderActivity.this, (LinkedList<Integer>) arrobject[1]);
                        ReaderActivity.c(ReaderActivity.this, false);
                    }
                }
            }
        }, true);
    }

    private void o() {
        this.M = 0;
        this.m.setReadMode(this.M);
        this.H();
        this.W = 0;
        this.X = 0;
        this.Z = 0;
    }

    private void p() {
        if (this.ab != null && this.ab.isHeld()) {
            this.ab.release();
            this.ab = null;
        }
    }

    private boolean q() {
        return 5 == this.L;
    }

    private void r() {
        if (this.G) {
            this.setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
        } else {
            this.setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
        }
    }

    private void s() {
        this.g.a(new Reader.ae() {
            @Override
            public void a() {
                ReaderActivity.N(ReaderActivity.this);
            }

            @Override
            public void b() {
                if (ReaderActivity.O(ReaderActivity.this)) {
                    ReaderActivity.P(ReaderActivity.this);
                }
            }
        });
        this.g.b(new Reader.ae() {
            @Override
            public void a() {
                ReaderActivity.N(ReaderActivity.this);
            }

            @Override
            public void b() {
                ReaderActivity.P(ReaderActivity.this);
            }
        });
        this.t();
    }

    private void t() {
        boolean bl = true;
        if (!this.I) {
            bl = !this.getIntent().getBooleanExtra("extra_force_online", false);
        }
        this.g.a(new Reader.ad() {
            @Override
            public void a() {
                ReaderActivity.d(ReaderActivity.this, false);
                ReaderActivity.Q(ReaderActivity.this);
            }

            @Override
            public void b() {
                ReaderActivity.d(ReaderActivity.this, true);
                ReaderActivity.P(ReaderActivity.this);
                ReaderActivity.R(ReaderActivity.this);
                ReaderActivity.f(ReaderActivity.this, -4);
            }
        }, bl);
    }

    private void u() {
        this.m.setAdapter(new PagerAdapter() {
            @Override
            public int getCount() {
                return 1;
            }

            @Override
            public Object instantiateItem(ViewGroup container, int position) {
                o o2 = ReaderActivity.i(ReaderActivity.this)[position];
                container.addView(o2.i());
                return o2.i();
            }

            @Override
            public void destroyItem(ViewGroup container, int position, Object object) {
                container.removeView((View) object);
            }

            @Override
            public boolean isViewFromObject(View view, Object object) {
                return view == object;
            }
        });
        this.m.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if ((int) v.getTag() == 0) {
                    ReaderActivity.W(ReaderActivity.this);
                }
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    private void v() {
        n n2 = this.A();
        if (n2 != null && !n2.p()) {
            if (n2.nf() != 1) {
                int n3 = n2.l();
                this.j.a(n3, new e<n>() {
                    @Override
                    public void a(n var1) {
                        ReaderActivity.a(ReaderActivity.this, var1);
                    }
                }, true);
            } else {
                this.c(n2.l());
            }
        } else {
            final o o2 = this.b[0];
            o o3 = this.b[1];
            final o o4 = this.b[2];
            n n4 = o2.j();
            n n5 = o3.j();
            n n6 = o4.j();
            if (this.n == 2 && n6 != null) {
                if (!n6.e() && !this.w()) {
                    final int n7 = this.g.f();
                    this.O.a();
                    this.g.setaf(new Reader.af() {
                        @Override
                        public void a() {
                            ReaderActivity.P(ReaderActivity.this);
                            ChapterLink[] arrchapterLink = ReaderActivity.Y(ReaderActivity.this).d();
                            if (arrchapterLink == null) return;
                            if (n7 < arrchapterLink.length) {
                                ReaderActivity.h(ReaderActivity.this, arrchapterLink.length);
                                return;
                            }
                            ReaderActivity.this.toggle();
                        }

                        @Override
                        public void b() {
                            ReaderActivity.P(ReaderActivity.this);
                        }
                    });
                } else {
                    o3.a(n6, true);
                    this.m.setCurrentItem(1, false);
                    o2.a(n5);
                    n6.a(new e<n>() {

                        @Override
                        public void a(n var1) {
                            o4.a(var1);
                        }
                    });
                    this.x();
                    this.a(n2);
                    if (this.M == 1) {
                        this.M();
                    } else if (this.M == 2) {
                        if (this.aa.size() != 0) {
                            this.b[this.n].a(0, 1 + n6.c().length());
                        } else {
                            Object[] arrobject = n6.d();
                            if (arrobject != null) {
                                this.Y = (String[]) arrobject[0];
                                this.aa = (LinkedList<Integer>) arrobject[1];
                                this.a(true);
                            }
                        }
                    }
                }
            } else {
                if (this.n == 0 && n4 != null && n4.f()) {
                    o3.a(n4, true);
                    this.m.setCurrentItem(1, false);
                    o4.a(n5);
                    n4.b(new e<n>() {
                        @Override
                        public void a(n var1) {
                            o2.a(var1);
                        }
                    });
                    this.x();
                    this.a(n2);
                } else if (this.n == 1) {
                    if (this.M == 1) {
                        this.M();
                    } else if (this.M == 2) {
                        if (this.aa.size() != 0) {
                            this.b[this.n].a(0, 1 + n5.c().length());
                        } else {
                            Object[] arrobject = n5.d();
                            if (arrobject != null) {
                                this.Y = (String[]) arrobject[0];
                                this.aa = (LinkedList<Integer>) arrobject[1];
                                this.a(true);
                            }
                        }
                    }
                }
            }
        }
    }

    private boolean w() {
        com.clilystudio.netbook.a_pack.e<String, Void, Boolean> ag2 = this.g.b();
        return ag2 == null || ag2.getStatus() == AsyncTask.Status.FINISHED;
    }

    private void x() {
        n n2 = this.A();
        if (n2 == null) {
            return;
        }
        this.g.a(n2.l(), n2.m());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void y() {
        if (this.o) {
            this.H();
        } else {
            n n2 = this.A();
            if (n2 != null) {
                this.E();
                if (!n2.e() && this.w()) {
                    this.toggle();
                } else if (!this.i.c()) {
                    this.m.setCurrentItem(1 + this.n, false);
                    this.v();
                } else if (!this.m.a(1 + this.n)) {
                    this.v();
                }
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void z() {
        if (this.o) {
            this.H();
            return;
        }
        n n2 = this.A();
        if (n2 == null) return;
        {
            if (!n2.f()) {
                com.clilystudio.netbook.util.e.a(this, R.string.is_first);
                return;
            }
            if (this.i.c()) {
                this.m.a(-1 + this.n);
                return;
            }
        }
        this.m.setCurrentItem(-1 + this.n, false);
        this.v();
    }

    public final void a() {
        this.t.c();
        this.T.c();
    }

    @Deprecated
    public final void a(int n2) {
        TextView textView = (TextView) this.findViewById(R.id.reader_menu_topic_count);
        if (textView == null) {
            return;
        }
        if (n2 > 0) {
            textView.setVisibility(View.VISIBLE);
            if (n2 > 99) {
                n2 = 99;
            }
            textView.setText(String.valueOf(n2));
            return;
        }
        this.Q = 0;
        textView.setVisibility(View.GONE);
    }

    public final void b() {
        this.t.d();
        this.T.d();
    }

    public final void c() {
        this.L();
    }

    public final void d() {
        this.N();
    }

    public final void e() {
        this.W = 0;
        this.X = 0;
        for (com.clilystudio.netbook.reader.o anArro : this.b) {
            anArro.a(-1, -1);
        }
    }

    public final String f() {
        return this.e;
    }

    public final void g() {
        this.j.a(new e<n>() {

            @Override
            public void a(n var1) {
                ReaderActivity.a(ReaderActivity.this, var1);
            }
        });
    }

    public final String h() {
        if (this.g != null) {
            return this.g.i();
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void i() {
        this.P();
        String string = this.g != null && this.g.i() != null ? this.g.i() : this.f;
        com.clilystudio.netbook.util.I.d = string;
        this.startActivity(ReaderMixActivity.a(this, this.c, this.d, string));
        this.overridePendingTransition(R.anim.mode_list_enter_in, R.anim.mode_list_enter_out);
    }

    public final boolean j() {
        return this.b.length > this.n && this.b[this.n].f();
    }

    public final void k() {
        for (com.clilystudio.netbook.reader.o anArro : this.b) {
            anArro.h();
        }
    }

    public final String l() {
        return this.c;
    }

    public final boolean m() {
        return this.N;
    }

    @Override
    protected void onActivityResult(int n2, int n3, Intent intent) {
        super.onActivityResult(n2, n3, intent);
        this.i.a();
        if (this.j != null) {
            this.J();
            this.h.a(this.F);
            this.g();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onBackPressed() {
        if (this.g.m()) {
            super.onBackPressed();
        } else {
            new BaseDialog.Builder(this).setTitle(R.string.reader_add_book_title).setMessage(R.string.add_book_hint)
                    .setPositiveButton(R.string.add_book, new DialogInterface.OnClickListener() {

                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            dialog.dismiss();
                            ReaderActivity.ad(ReaderActivity.this);
                            finish();
                        }
                    }).setNegativeButton(R.string.add_book_cancel, new DialogInterface.OnClickListener() {

                @Override
                public void onClick(DialogInterface dialog, int which) {
                    dialog.dismiss();
                    finish();
                }
            }).create().show();
        }
        if (this.j()) {
            this.b[this.n].g();
        }
    }

    @Override
    public void onClick(View view) {
        if (this.S != null) {
            this.S.dismiss();
        }
        switch (view.getId()) {
            case R.id.menu_item_1:
                this.O();
                break;
            case R.id.menu_item_2:
                this.startActivity(BookInfoActivity.a(this, this.c));
                break;
        }
    }

    @Subscribe
    public void onConvertChanged(j j2) {
        this.h.b();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.getWindow().addFlags(256);
        this.getWindow().addFlags(512);
        this.G = com.clilystudio.netbook.hpay100.a.a.l(this, "reader_orientation");
        this.r();
        this.setContentView(R.layout.activity_reader);
        com.clilystudio.netbook.event.i.a().register(this);
        Intent intent = this.getIntent();
        this.c = this.a("BOOK_ID");
        this.d = this.a("BOOK_TITLE");
        this.f = this.a("SOURCE_HOST");
        this.I = intent.getBooleanExtra("IS_SHOW_TOC", false);
        String string = this.a("TOC_ID");
        if ("MIX_TOC_ID".equals(string)) {
            string = "MIX_TOC_ID" + this.c;
        }
        this.e = string;
        BookReadRecord bookReadRecord = BookReadRecord.get(this.c);
        this.L = bookReadRecord != null ? bookReadRecord.getReadMode() : MyApplication.a().d();
        this.N = intent.getBooleanExtra("HAS_OTHER_SOURCES", true);
        com.clilystudio.netbook.util.I.a = this.c;
        com.clilystudio.netbook.util.I.b = this.d;
        com.clilystudio.netbook.util.I.d = this.f;
        com.clilystudio.netbook.util.I.c = this.e;
        com.clilystudio.netbook.util.I.g = this.L;
        com.clilystudio.netbook.hpay100.a.a.i(this, this.c);
        this.g = new Reader(this.c, this.e, this.d, this.L);
        this.g.a(this.getIntent().getStringExtra("SOURCE_ID"));
        this.g.a((Map<String, String>) this.getIntent().getSerializableExtra("CHAPTERS_KEY"));
        if (bundle != null) {
            this.n = bundle.getInt("SaveSelectedPageIndex", 0);
            this.H = bundle.getBoolean("SaveChangeOrientation");
            this.J = bundle.getBoolean("SaveTocDisable");
            this.K = bundle.getBoolean("SaveModeDisable");
        }
        this.Q();
        FragmentTransaction fragmentTransaction = this.getSupportFragmentManager().beginTransaction();
        this.r_fragment = ReaderMenuFragment.a(this.c, this.d);
        fragmentTransaction.replace(R.id.menu_frame, this.r_fragment);
        try {
            fragmentTransaction.commitAllowingStateLoss();
        } catch (IllegalStateException var8_16) {
            var8_16.printStackTrace();
        }
        SlidingMenu slidingMenu = this.getSlidingMenu();
        slidingMenu.setMode(1);
        slidingMenu.setShadowWidthRes(R.dimen.shadow_width_app_recommend);
        slidingMenu.setShadowDrawable(R.drawable.shadowright);
        slidingMenu.setBehindOffsetRes(R.dimen.slidingmenu_offset_reader);
        slidingMenu.setFadeDegree(0.35f);
        slidingMenu.setBehindScrollScale(0.0f);
        slidingMenu.setTouchModeAbove(1);
        slidingMenu.setSlidingEnabled(false);
        slidingMenu.setOnOpenedListener(new SlidingMenu.OnOpenedListener() {
            @Override
            public void onOpened() {
                ReaderActivity.a(ReaderActivity.this);
                ReaderActivity.this.a(ReaderActivity.this.Q);
                com.clilystudio.netbook.hpay100.a.a.q(ReaderActivity.this, "打开页尾");
            }
        });
        this.m = (PagerWidget) this.findViewById(R.id.main_view);
        this.r = (ReaderActionBar) this.findViewById(R.id.bottom_action_bar);
        this.s = (SettingWidget) this.findViewById(R.id.setting_widget);
        this.t = (AutoReaderSetWidget) this.findViewById(R.id.auto_reader_setting);
        this.B = this.findViewById(R.id.reader_download_pro);
        this.C = (TextView) this.findViewById(R.id.reader_download_pro_current);
        this.T = (AutoReaderTextView) this.findViewById(R.id.tv_auto_reader_body);
        this.U = this.findViewById(R.id.view_auto_reader_shadow);
        this.h = new bZ(this);
        this.O = (ThemeLoadingView) this.findViewById(R.id.reader_content_loading);
        this.O.setVisibility(View.GONE);
        this.O.a(this.h.h());
        this.i = new bH(this);
        this.h.a(new bZ.cc() {
            @Override
            public void a() {
                for (o o2 : ReaderActivity.i(ReaderActivity.this)) {
                    if (o2 != null) {
                        o2.a();
                    }
                }
                ReaderActivity.t(ReaderActivity.this);
                ReaderActivity.this.g();
            }
        });
        this.h.a(new bZ.cb() {
            @Override
            public void a() {
                ReaderActivity.this.g();
            }
        });
        this.h.a(new bZ.ce() {
            @Override
            public void a() {
                for (o o2 : ReaderActivity.i(ReaderActivity.this)) {
                    if (o2 != null) {
                        o2.b();
                    }
                }
                ReaderActivity.u(ReaderActivity.this);
            }
        });
        this.h.a(new bZ.ca() {
            @Override
            public void a() {
                ReaderActivity.v(ReaderActivity.this);
            }
        });
        this.h.a(new bZ.cd() {
            @Override
            public void a() {
                for (o o2 : ReaderActivity.i(ReaderActivity.this)) {
                    if (o2 == null) {
                        o2.c();
                    }
                }
                ReaderActivity.u(ReaderActivity.this);
            }
        });
        this.R();
        this.T.setTextColor(this.h.g);
        this.T.setHeight(this.h.e);
        this.T.setTextSize(0, this.h.a);
        this.T.setLineSpacing(this.h.b, 1.0f);
        if (this.h.h == R.drawable.reader_background_brown_big_img) {
            this.T.setBackgroundResource(R.drawable.reader_background_brown_auto_img);
        } else {
            this.T.setBackgroundResource(this.h.h);
        }
        boolean bl2 = this.L == 5 || this.L == 10 || com.clilystudio.netbook.hpay100.a.a.h(this.L) || this.L == 9;
        View view = this.findViewById(R.id.reader_ab_read_mode);
        view.setVisibility(bl2 ? View.VISIBLE : View.GONE);
        this.r.setReaderStyle(this.h);
        this.r.b(this.G);
        this.r.setOnBtnClickListener(new ReaderActionBar.OnBtnClickListener() {
            @Override
            public void a(int n2) {
                switch (n2) {
                    case R.id.read_opt_setting:
                        SettingWidget settingWidget = ReaderActivity.w(ReaderActivity.this);
                        boolean bl = !ReaderActivity.this.j();
                        settingWidget.setReadOptionEnable(bl);
                        ReaderActivity.w(ReaderActivity.this).a();
                        break;
                    case R.id.read_opt_toc:
                        ReaderActivity.w(ReaderActivity.this).setVisibility(View.GONE);
                        ReaderActivity.x(ReaderActivity.this);
                        break;
                    case R.id.reader_oper_back:
                        ReaderActivity.w(ReaderActivity.this).setVisibility(View.GONE);
                        ReaderActivity.this.onBackPressed();
                        break;
                    case R.id.reader_ab_chapter_url_view:
                        ReaderActivity.w(ReaderActivity.this).setVisibility(View.GONE);
                        ReaderActivity.y(ReaderActivity.this);
                        break;
                    case R.id.reader_ab_read_mode:
                        ReaderActivity.w(ReaderActivity.this).setVisibility(View.GONE);
                        ReaderActivity.this.i();
                        break;
                    case R.id.reader_ab_more:
                        ReaderActivity.w(ReaderActivity.this).setVisibility(View.GONE);
                        View view = ReaderActivity.A(ReaderActivity.this).findViewById(R.id.reader_ab_more);
                        if (com.clilystudio.netbook.hpay100.a.a.i()) {
                            ReaderActivity.a(ReaderActivity.this, view);
                        } else {
                            ReaderActivity.b(ReaderActivity.this, view);
                        }
                        break;
                    case R.id.read_opt_orientation:
                        ReaderActivity.w(ReaderActivity.this).setVisibility(View.GONE);
                        ReaderActivity.b(ReaderActivity.this, true);
                        ReaderActivity.B(ReaderActivity.this);
                        break;
                    case R.id.reader_download:
                        ReaderActivity.w(ReaderActivity.this).setVisibility(View.GONE);
                        ReaderActivity.C(ReaderActivity.this);
                        break;
                }
            }
        });
        this.s.setReaderStyle(this.h, this.r);
        this.s.a(new SettingWidget.db() {
            @Override
            public void a() {
                startActivityForResult(ReaderOptionActivity.a(ReaderActivity.this), 0);
            }
        });
        this.s.a(new SettingWidget.dc() {
            @Override
            public void a() {
                ReaderActivity.f(ReaderActivity.this);
                ReaderActivity.a(ReaderActivity.this, 1);
                ReaderActivity.h(ReaderActivity.this).setReadMode(ReaderActivity.g(ReaderActivity.this));
                ReaderActivity.k(ReaderActivity.this).setTotalHeight(ReaderActivity.i(ReaderActivity.this)[ReaderActivity.j(ReaderActivity.this)].d());
                if (ReaderActivity.l(ReaderActivity.this).i()) {
                    ReaderActivity.k(ReaderActivity.this).setText(ReaderActivity.m(ReaderActivity.this).a(ReaderActivity.this));
                } else {
                    ReaderActivity.k(ReaderActivity.this).setText(ReaderActivity.m(ReaderActivity.this).c());
                }
                ReaderActivity.k(ReaderActivity.this).f();
                ReaderActivity.n(ReaderActivity.this);

            }
        });
        this.t.setOptionClickListener(this);
        this.T.setOnPageTurning(this);
        this.m.setAutoReaderTextView(this.T);
        this.j = new K(this.g, this.h);
        this.C();
        this.m.setAdapter(new PagerAdapter() {
            @Override
            public int getCount() {
                return 3;
            }

            @Override
            public Object instantiateItem(ViewGroup container, int position) {
                o o2 = ReaderActivity.i(ReaderActivity.this)[position];
                container.addView(o2.i());
                return o2.i();
            }

            @Override
            public void destroyItem(ViewGroup container, int position, Object object) {
                container.removeView((View) object);
            }

            @Override
            public boolean isViewFromObject(View view, Object object) {
                return view == object;
            }
        });
        this.q = this.getWindow().getDecorView();
        if (com.clilystudio.netbook.hpay100.a.a.h()) {
            this.q.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() {
                @Override
                public void onSystemUiVisibilityChange(int visibility) {
                    ReaderActivity.this.p = (visibility & 1) == 0;
                }
            });
        }
        this.J();
        if (this.H) {
            this.I = false;
            Reader reader = MyApplication.a().b();
            if (reader != null) {
                this.g = reader;
                this.B();
            } else {
                this.s();
            }
        } else {
            this.s();
        }
        com.clilystudio.netbook.a_pack.e<String, Void, TopicCount> bq2 = new com.clilystudio.netbook.a_pack.e<String, Void, TopicCount>() {

            @Override
            protected TopicCount doInBackground(String... params) {
                com.clilystudio.netbook.api.b.a();
                return com.clilystudio.netbook.api.b.b().I(params[0]);
            }

            @Override
            protected void onPostExecute(TopicCount topicCount) {
                super.onPostExecute(topicCount);
                if (topicCount != null && topicCount.isOk()) {
                    ReaderActivity.i(ReaderActivity.this, topicCount.getCount());
                    ReaderActivity.this.Q = ReaderActivity.this.P - BookTopicEnterRecord.get(ReaderActivity.this.c).getVisitCount();
                    if (ReaderActivity.this.Q > 0) {
                        ReaderActivity.A(ReaderActivity.this).f(true);
                    } else {
                        ReaderActivity.A(ReaderActivity.this).f(false);
                    }
                }
            }
        };
        bq2.b(this.c);
        if (com.clilystudio.netbook.am.e() != null) {
            new com.clilystudio.netbook.a_pack.e<Void, Void, ChapterKeysRoot>() {
                @Override
                protected ChapterKeysRoot doInBackground(Void... params) {
                    com.clilystudio.netbook.api.b.a();
                    return com.clilystudio.netbook.api.b.b().g(am.e().getToken(), ReaderActivity.M(ReaderActivity.this));
                }

                @Override
                protected void onPostExecute(ChapterKeysRoot chapterKeysRoot) {
                    HashMap<String, String> hashMap;
                    if (chapterKeysRoot != null && chapterKeysRoot.isOk()) {
                        hashMap = new HashMap<>((int) ((double) chapterKeysRoot.getKeyLength() / 0.7));
                        for (ChapterKeysRoot.ChapterKey chapterKey : chapterKeysRoot.getKeys()) {
                            hashMap.put(chapterKey.get_id(), chapterKey.getKey());
                        }
                        com.clilystudio.netbook.hpay100.a.a.a(ReaderActivity.M(ReaderActivity.this), hashMap);
                    } else {
                        hashMap = com.clilystudio.netbook.hpay100.a.a.M(ReaderActivity.M(ReaderActivity.this));
                        if (hashMap == null) {
                            hashMap = new HashMap<>();
                        }
                    }
                    ReaderActivity.Y(ReaderActivity.this).a(hashMap);
                }
            }.b();
        }
        new k(this.c).a();
        MiStatInterface.recordCountEvent("read_mode_33_new", com.clilystudio.netbook.hpay100.a.a.g(this.L));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onDestroy() {
        try {
            this.unregisterReceiver(this.ag);
            this.unregisterReceiver(this.ah);
        } catch (IllegalArgumentException var1_1) {
            var1_1.printStackTrace();
        }
        this.p();
        com.clilystudio.netbook.event.i.a().unregister(this);
        o[] arro = this.b;
        int n2 = arro.length;
        int n3 = 0;
        do {
            if (n3 >= n2) {
                super.onDestroy();
                return;
            }
            o o2 = arro[n3];
            com.clilystudio.netbook.event.i.a().unregister(o2);
            ++n3;
        } while (true);
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent keyEvent) {
        switch (keyCode) {
            case KeyEvent.KEYCODE_VOLUME_UP:
                if (this.i.b() && this.M == 0) {
                    if (this.getSlidingMenu().isMenuShowing()) {
                        this.getSlidingMenu().toggle();
                    } else {
                        this.z();
                    }
                    return true;
                } else {
                    return false;
                }
            case KeyEvent.KEYCODE_VOLUME_DOWN:
                if (this.i.b() && this.M == 0) {
                    this.y();
                    return true;
                } else {
                    return false;
                }
            default:
                return super.onKeyDown(keyCode, keyEvent);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean onKeyUp(int keyCode, KeyEvent keyEvent) {
        if (keyCode == KeyEvent.KEYCODE_MENU) {
            this.F();
            return true;
        } else {
            return keyCode == KeyEvent.KEYCODE_VOLUME_UP || keyCode == KeyEvent.KEYCODE_VOLUME_DOWN || super.onKeyUp(keyCode, keyEvent);
        }
    }

    @Subscribe
    public void onModeChanged(v v2) {
        if (v2.a() == 1) {
            this.finish();
            return;
        }
        this.K = true;
        this.u();
        this.b(-5);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onPause() {
        BookReadRecord bookReadRecord;
        int n2 = 1;
        super.onPause();
        if (this.g != null) {
            this.g.c();
        }
        if (com.clilystudio.netbook.hpay100.a.a.a(this, "key_shelf_sort", n2) != n2) {
            n2 = 0;
        }
        if (n2 != 0 && (bookReadRecord = BookReadRecord.get(this.c)) != null) {
            bookReadRecord.readTime = new Date();
            bookReadRecord.save();
            com.clilystudio.netbook.event.i.a().post(new com.clilystudio.netbook.event.g());
        }
        try {
            LocalBroadcastManager.getInstance(this).unregisterReceiver(this.ae);
        } catch (IllegalArgumentException var2_3) {
            var2_3.printStackTrace();
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        this.getWindow().addFlags(128);
        this.K();
        LocalBroadcastManager.getInstance(this).registerReceiver(this.ae, new IntentFilter("com.clilystudio.netbook.dlReceiver"));
        this.H();
//        if (this.M == 2 || !"".equals(a)) {
//            this.v = false;
//        }
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("SaveSelectedPageIndex", this.n);
        bundle.putBoolean("SaveChangeOrientation", this.H);
        bundle.putBoolean("SaveTocDisable", this.J);
        bundle.putBoolean("SaveModeDisable", this.K);
    }

    @Subscribe
    public void onThemeChanged(C c2) {
        this.O.a(c2.a());
    }

    @Override
    public void onUserInteraction() {
        super.onUserInteraction();
        this.K();
    }

    public final class bH {
        private final SharedPreferences a;
        private boolean b;
        private boolean c;
        private int d;
        private boolean e;
        private boolean f;

        public bH(Context context) {
            this.a = PreferenceManager.getDefaultSharedPreferences(context);
            this.g();
        }

        private void g() {
            this.b = this.a.getBoolean("volume_keys_flip", true);
            this.c = this.a.getBoolean("click_flip_animation", false);
            this.d = this.a.getInt("reader_screen_off_time", 120000);
            this.e = this.a.getBoolean("key_always_next_page", false);
            this.f = this.a.getBoolean("key_enable_imersive_mode", false);
            this.a.getBoolean("convert_t", false);
        }

        public final void a() {
            this.g();
        }

        public final boolean b() {
            return this.b;
        }

        public final boolean c() {
            return this.c;
        }

        public final int d() {
            return this.d;
        }

        public final boolean e() {
            return this.e;
        }

        public final boolean f() {
            return this.f;
        }
    }
}
