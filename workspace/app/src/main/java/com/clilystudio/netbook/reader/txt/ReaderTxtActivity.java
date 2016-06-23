package com.clilystudio.netbook.reader.txt;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.PagerAdapter;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.TxtFileObject;
import com.clilystudio.netbook.reader.AutoReaderSetWidget;
import com.clilystudio.netbook.reader.AutoReaderTextView;
import com.clilystudio.netbook.reader.G;
import com.clilystudio.netbook.reader.PagerWidget;
import com.clilystudio.netbook.reader.Reader;
import com.clilystudio.netbook.reader.ReaderActionBar;
import com.clilystudio.netbook.reader.ReaderOptionActivity;
import com.clilystudio.netbook.reader.ReaderTocDialog;
import com.clilystudio.netbook.reader.SettingWidget;
import com.clilystudio.netbook.reader.ad;
import com.clilystudio.netbook.reader.ae;
import com.clilystudio.netbook.reader.bH;
import com.clilystudio.netbook.reader.bZ;
import com.clilystudio.netbook.reader.ca;
import com.clilystudio.netbook.reader.cb;
import com.clilystudio.netbook.reader.cc;
import com.clilystudio.netbook.reader.cd;
import com.clilystudio.netbook.reader.ce;
import com.clilystudio.netbook.reader.cw;
import com.clilystudio.netbook.reader.db;
import com.clilystudio.netbook.reader.dc;
import com.clilystudio.netbook.reader.e;
import com.clilystudio.netbook.reader.n;
import com.clilystudio.netbook.reader.o;

import java.io.File;
import java.util.LinkedList;

import uk.me.lewisdeane.ldialogs.BaseDialog;

public class ReaderTxtActivity extends FragmentActivity implements com.clilystudio.netbook.reader.a,
        com.clilystudio.netbook.reader.d {
    public static String a = "";
    private LinkedList<Integer> F;
    private PowerManager.WakeLock H = null;
    private Runnable J;
    private BroadcastReceiver K;
    private BroadcastReceiver L;
    private o[] b = new o[3];
    private String c;
    private Reader d;
    private bZ e;
    private bH f;
    private com.clilystudio.netbook.reader.K g;
    private ReaderTocDialog h;
    private Handler i = new Handler();
    private PagerWidget j;
    private int k;
    private boolean l = true;
    private boolean m = true;
    private View n;
    private ReaderActionBar o;
    private SettingWidget p;
    private int q = -1;
    private boolean r;
    private boolean s;
    private boolean t;
    private View u;
    private AutoReaderSetWidget v;
    private int w = 0;
    private AutoReaderTextView x;
    private View y;

    public ReaderTxtActivity() {
        this.J = new Runnable() {
            @Override
            public void run() {
                getWindow().clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
            }
        };
        this.K = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                int n2 = intent.getIntExtra("level", 0);
                int n3 = intent.getIntExtra("scale", 100);
                int n4 = n2 * 100 / n3;
                if (ReaderTxtActivity.N(ReaderTxtActivity.this) != n4) {
                    ReaderTxtActivity.g(ReaderTxtActivity.this, n4);
                    o[] arro = ReaderTxtActivity.d(ReaderTxtActivity.this);
                    for (com.clilystudio.netbook.reader.o anArro : arro) {
                        anArro.a(n4);
                    }
                }
            }
        };
        this.L = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                o[] arro = ReaderTxtActivity.d(ReaderTxtActivity.this);
                for (com.clilystudio.netbook.reader.o anArro : arro) {
                    anArro.k();
                }
            }
        };
    }

    static /* synthetic */ void D(final ReaderTxtActivity readerTxtActivity) {
        if (readerTxtActivity.isFinishing()) return;
        BaseDialog.Builder h2 = new BaseDialog.Builder(readerTxtActivity);
        h2.setTitle(R.string.toc_load_error);
        h2.setPositiveButton(R.string.retry, new DialogInterface.OnClickListener() {

            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                readerTxtActivity.l();
            }
        }).setNegativeButton(R.string.back, new DialogInterface.OnClickListener() {

            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                readerTxtActivity.finish();
            }
        });
        AlertDialog alertDialog = h2.create();
        alertDialog.setCanceledOnTouchOutside(false);
        alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() {
            @Override
            public void onCancel(DialogInterface dialog) {
                readerTxtActivity.finish();
            }
        });
        alertDialog.show();
    }

    static /* synthetic */ void E(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.n();
    }

    static /* synthetic */ bH F(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.f;
    }

    static /* synthetic */ void G(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.p();
    }

    static /* synthetic */ void H(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.q();
    }

    static /* synthetic */ void I(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.s();
    }

    static /* synthetic */ ReaderTocDialog K(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.h;
    }

    static /* synthetic */ void L(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.o();
    }

    static /* synthetic */ int N(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.q;
    }

    static /* synthetic */ int a(ReaderTxtActivity readerTxtActivity, int n2) {
        readerTxtActivity.w = n2;
        return n2;
    }

    static /* synthetic */ void a(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.t();
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(final ReaderTxtActivity readerTxtActivity, final n n2) {
        if (!n2.f()) {
            readerTxtActivity.b[0].a(n2);
            n2.a(new e<n>() {

                @Override
                public void a(n var1) {
                    ReaderTxtActivity.d(readerTxtActivity)[1].a(var1);
                    if (n2 != null) {
                        n2.a(new e<n>() {
                            @Override
                            public void a(n var1) {
                                ReaderTxtActivity.d(readerTxtActivity)[2].a(var1);
                                ReaderTxtActivity.c(readerTxtActivity).setCurrentItem(0, false);
                                ReaderTxtActivity.L(readerTxtActivity);
                            }
                        });
                    }
                }
            });
        } else if (!n2.e()) {
            readerTxtActivity.b[2].a(n2);
            n2.b(new com.clilystudio.netbook.reader.e<n>() {

                @Override
                public void a(n var1) {
                    ReaderTxtActivity.d(readerTxtActivity)[1].a(var1);
                    var1.b(new com.clilystudio.netbook.reader.e<n>() {
                        @Override
                        public void a(n var1) {
                            ReaderTxtActivity.d(readerTxtActivity)[0].a(var1);
                            ReaderTxtActivity.c(readerTxtActivity).setCurrentItem(2, false);
                            ReaderTxtActivity.L(readerTxtActivity);
                        }
                    });
                }
            });
        } else {
            readerTxtActivity.b[1].a(n2);
            n2.a(new com.clilystudio.netbook.reader.e<n>() {

                @Override
                public void a(n var1) {
                    ReaderTxtActivity.d(readerTxtActivity)[2].a(var1);
                    n2.b(new com.clilystudio.netbook.reader.e<n>() {

                        @Override
                        public void a(n var1) {
                            ReaderTxtActivity.d(readerTxtActivity)[0].a(var1);
                            ReaderTxtActivity.c(readerTxtActivity).setCurrentItem(1, false);
                            ReaderTxtActivity.L(readerTxtActivity);
                        }
                    });

                }
            });
        }
        if (readerTxtActivity.w == 1) {
            if (!readerTxtActivity.x.isShown()) {
                readerTxtActivity.z();
            }
            readerTxtActivity.x.a();
        }
    }

    static /* synthetic */ int b(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.w;
    }

    static /* synthetic */ boolean b(ReaderTxtActivity readerTxtActivity, boolean bl) {
        readerTxtActivity.t = bl;
        return bl;
    }

    static /* synthetic */ PagerWidget c(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.j;
    }

    static /* synthetic */ boolean d(ReaderTxtActivity readerTxtActivity, boolean bl) {
        readerTxtActivity.m = bl;
        return bl;
    }

    static /* synthetic */ o[] d(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.b;
    }

    static /* synthetic */ int e(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.k;
    }

    static /* synthetic */ void e(ReaderTxtActivity readerTxtActivity, int n2) {
        readerTxtActivity.a(n2);
    }

    static /* synthetic */ int f(ReaderTxtActivity readerTxtActivity, int n2) {
        readerTxtActivity.k = n2;
        return n2;
    }

    static /* synthetic */ AutoReaderTextView f(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.x;
    }

    static /* synthetic */ int g(ReaderTxtActivity readerTxtActivity, int n2) {
        readerTxtActivity.q = n2;
        return n2;
    }

    static /* synthetic */ bZ g(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.e;
    }

    static /* synthetic */ n h(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.w();
    }

    static /* synthetic */ void i(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.x();
    }

    static /* synthetic */ void o(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.x.setHeight(readerTxtActivity.e.e);
        readerTxtActivity.x.setTextSize(0, readerTxtActivity.e.a);
        readerTxtActivity.x.setLineSpacing(readerTxtActivity.e.b, 1.0f);
    }

    static /* synthetic */ void p(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.v();
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void q(ReaderTxtActivity readerTxtActivity) {
        if (readerTxtActivity.e.h == R.drawable.reader_background_brown_big_img) {
            readerTxtActivity.x.setBackgroundResource(R.drawable.reader_background_brown_auto_img);
        } else {
            readerTxtActivity.x.setBackgroundResource(readerTxtActivity.e.h);
        }
        readerTxtActivity.x.setTextColor(readerTxtActivity.e.g);
    }

    static /* synthetic */ void r(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.m();
    }

    static /* synthetic */ SettingWidget s(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.p;
    }

    static /* synthetic */ void t(final ReaderTxtActivity readerTxtActivity) {
        if (!readerTxtActivity.isFinishing()) {
            if (readerTxtActivity.h == null) {
                readerTxtActivity.h = ReaderTocDialog.a();
                readerTxtActivity.h.a(readerTxtActivity.d);
                readerTxtActivity.h.a(new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        ReaderTxtActivity.e(readerTxtActivity, which);
                        ReaderTxtActivity.K(readerTxtActivity).dismiss();
                    }
                });
            }
            com.clilystudio.netbook.hpay100.a.a.a(readerTxtActivity, readerTxtActivity.h);
        }
    }

    static /* synthetic */ void u(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.s = !readerTxtActivity.s;
        readerTxtActivity.f();
        com.clilystudio.netbook.hpay100.a.a.b(readerTxtActivity, "reader_orientation", readerTxtActivity.s);
    }

    private void A() {
        this.i.removeCallbacks(this.J);
        if (this.f.d() != 0) {
            this.i.postDelayed(this.J, this.f.d());
        }
    }

    private void a(int n2) {
        this.g.b(n2, new e<n>() {

            @Override
            public void a(n var1) {
                Object[] arrobject;
                ReaderTxtActivity.a(ReaderTxtActivity.this, var1);
                if (ReaderTxtActivity.this.w == 2 && var1 != null && (arrobject = var1.d()) != null) {
                    ReaderTxtActivity.this.F = (LinkedList) arrobject[1];
                }
            }
        }, true);
    }

    private void f() {
        if (this.s) {
            this.setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
        } else {
            this.setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
        }
    }

    private void i() {
        if (this.H != null && this.H.isHeld()) {
            this.H.release();
            this.H = null;
        }
    }

    private void k() {
        this.d.c(new ae() {
            @Override
            public void a() {
                ReaderTxtActivity.this.u.setVisibility(View.VISIBLE);
            }

            @Override
            public void b() {
                ReaderTxtActivity.this.u.setVisibility(View.GONE);
            }
        });
        this.l();
    }

    private void l() {
        this.d.a(new ad() {
            @Override
            public void a() {
                ReaderTxtActivity.this.r();
            }

            @Override
            public void b() {
                ReaderTxtActivity.D(ReaderTxtActivity.this);
            }
        }, false);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void m() {
        WindowManager.LayoutParams layoutParams = this.getWindow().getAttributes();
        layoutParams.screenBrightness = this.e.g() ? -1.0f : (float) this.e.f() / 255.0f;
        this.getWindow().setAttributes(layoutParams);
    }

    private void n() {
        n n2 = this.b[this.k].j();
        if (n2 != null && !n2.p()) {
            if (n2.n() == 1) {
                this.a(n2.l());
                return;
            }
            int n3 = n2.l();
            this.g.a(n3, new e<com.clilystudio.netbook.reader.n>() {
                @Override
                public void a(n var1) {
                    ReaderTxtActivity.a(ReaderTxtActivity.this, var1);
                }
            }, true);
            return;
        }
        final o o2 = this.b[0];
        o o3 = this.b[1];
        final o o4 = this.b[2];
        n n4 = o2.j();
        n n5 = o3.j();
        n n6 = o4.j();
        if (this.k == 2 && n6 != null) {
            if (n6.e()) {
                o2.a(n5);
                o3.a(n6);
                this.j.setCurrentItem(1, false);
                n6.a(new e<n>() {

                    @Override
                    public void a(n var1) {
                        o4.a(var1);
                    }
                });
            }
            if (this.w == 1) {
                if (!this.x.isShown()) {
                    this.z();
                }
                this.x.a();
            }
            if (this.w == 2) {
                if (this.F.size() == 0) {
                    Object[] arrobject = n6.d();
                    if (arrobject != null) {
                        this.F = (LinkedList<Integer>) arrobject[1];
                    }
                } else {
                    this.b[this.k].a(0, 1 + n6.c().length());
                }
            }
        } else if (this.k == 0 && n4 != null && n4.f()) {
            o4.a(n5);
            o3.a(n4);
            this.j.setCurrentItem(1, false);
            n4.b(new e<com.clilystudio.netbook.reader.n>() {
                @Override
                public void a(n var1) {
                    o2.a(var1);
                }
            });
        } else if (this.k == 1) {
            if (this.w == 1) {
                if (!this.x.isShown()) {
                    this.z();
                }
                this.x.a();
            } else if (this.w == 2) {
                if (this.F.size() == 0) {
                    Object[] arrobject = n5.d();
                    if (arrobject != null) {
                        this.F = (LinkedList<Integer>) arrobject[1];
                    }
                } else {
                    this.b[this.k].a(0, 1 + n5.c().length());
                }
            }
        }
        this.o();
    }

    private void o() {
        n n2 = this.b[this.k].j();
        if (n2 != null) {
            this.d.a(n2.l(), n2.m());
            if (!n2.e()) {
                com.clilystudio.netbook.util.e.a(this, "已经是最后一页啦");
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void p() {
        n n2;
        o o2 = this.b[this.k];
        if (o2 == null || (n2 = o2.j()) == null) {
            return;
        }
        if (!n2.e()) {
            com.clilystudio.netbook.util.e.a(this, "已经是最后一页啦");
            return;
        }
        this.t();
        if (this.f.c()) {
            this.j.a(1 + this.k);
            return;
        }
        this.j.setCurrentItem(1 + this.k, false);
        this.n();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void q() {
        n n2;
        o o2 = this.b[this.k];
        if (o2 == null || (n2 = o2.j()) == null) {
            return;
        }
        if (!n2.f()) {
            com.clilystudio.netbook.util.e.a(this, R.string.is_first);
            return;
        }
        this.t();
        if (this.f.c()) {
            this.j.a(-1 + this.k);
            return;
        }
        this.j.setCurrentItem(-1 + this.k, false);
        this.n();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void r() {
        int n2;
        int n3;
        this.g = new com.clilystudio.netbook.reader.K(this.d, this.e);
        G h2 = new G() {
            @Override
            public void a(int var1) {
                ReaderTxtActivity.this.a(var1);
            }
        };
        int n4 = this.b.length;
        for (int i2 = 0; i2 < n4; ++i2) {
            o o2;
            this.b[i2] = o2 = new o(this, this.e);
            o2.a(h2);
        }
        this.registerReceiver(this.K, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        this.registerReceiver(this.L, new IntentFilter("android.intent.action.TIME_TICK"));
        this.j.setAdapter(new PagerAdapter() {
            @Override
            public int getCount() {
                return 3;
            }

            @Override
            public Object instantiateItem(ViewGroup container, int position) {
                o o2 = ReaderTxtActivity.this.b[position];
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
        this.j.setOnPageChangeListener(new cw() {
            @Override
            public void a(int var1) {
                ReaderTxtActivity.f(ReaderTxtActivity.this, var1);
            }

            @Override
            public void b(int var1) {
                if (var1 == 2) {
                    ReaderTxtActivity.a(ReaderTxtActivity.this);
                } else if (var1 == 0) {
                    ReaderTxtActivity.E(ReaderTxtActivity.this);
                }
            }
        });
        this.j.setOnPageClickListener(new PagerWidget.OnPageClickListener() {
            @Override
            public void a(int n2) {
                switch (n2) {
                    case 1:
                        if (ReaderTxtActivity.F(ReaderTxtActivity.this).e()) {
                            ReaderTxtActivity.G(ReaderTxtActivity.this);
                        } else {
                            ReaderTxtActivity.H(ReaderTxtActivity.this);
                        }
                        return;
                    case 2:
                        ReaderTxtActivity.G(ReaderTxtActivity.this);
                        return;
                    case 0:
                        ReaderTxtActivity.I(ReaderTxtActivity.this);
                        return;
                    default:
                }
            }
        });
        MyApplication.a().a(this.d);
        BookFile bookFile = TxtFileObject.getProgress(this.c);
        if (bookFile != null) {
            n2 = bookFile.getProgressChapterIndex();
            n3 = bookFile.getProgressCharOffset();
        } else {
            n3 = 0;
            n2 = 0;
        }
        this.g.a(n2, n3, new e<com.clilystudio.netbook.reader.n>() {
            @Override
            public void a(n var1) {
                ReaderTxtActivity.a(ReaderTxtActivity.this, var1);
            }
        }, true);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void s() {
        if (this.l) {
            this.t();
        } else {
            this.l = true;
            if (this.w == 0) {
                this.o.setVisibility(View.VISIBLE);
                this.getWindow().addFlags(2048);
                this.getWindow().clearFlags(1024);
                if (com.clilystudio.netbook.hpay100.a.a.h() && this.m) {
                    this.n.setSystemUiVisibility(0);
                }
            } else if (this.w == 1) {
                this.x.clearAnimation();
                this.v.a();
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @SuppressLint(value = {"NewApi"})
    private void t() {
        if (this.l) {
            this.l = false;
            this.o.setVisibility(View.GONE);
            this.p.setVisibility(View.GONE);
            this.v.b();
            if (this.w == 1) {
                this.x.e();
            }
            this.getWindow().addFlags(1024);
            this.getWindow().clearFlags(2048);
            if (this.r) {
                this.getWindow().addFlags(512);
            } else {
                this.getWindow().addFlags(2048);
                this.getWindow().clearFlags(1024);
                this.getWindow().clearFlags(512);
                if (com.clilystudio.netbook.hpay100.a.a.h() && this.m) {
                    this.n.setSystemUiVisibility(0);
                }
            }
            com.clilystudio.netbook.hpay100.a.a.a(this.n);
        }
        if (this.f.f()) {
            if (com.clilystudio.netbook.hpay100.a.a.h() && this.m) {
                this.n.setSystemUiVisibility(View.SYSTEM_UI_FLAG_IMMERSIVE
                        | View.SYSTEM_UI_FLAG_LOW_PROFILE
                        | View.SYSTEM_UI_FLAG_HIDE_NAVIGATION | View.SYSTEM_UI_FLAG_FULLSCREEN);
            }
        } else {
            if (com.clilystudio.netbook.hpay100.a.a.h() && this.m) {
                this.n.setSystemUiVisibility(View.SYSTEM_UI_FLAG_LOW_PROFILE);
            }
        }
    }

    private void u() {
        this.r = com.clilystudio.netbook.hpay100.a.a.l(this, "reader_opt_full_screen");
        this.o.a(this.r);
        this.t();
    }

    private void v() {
        this.g.a(new e<com.clilystudio.netbook.reader.n>() {
            @Override
            public void a(n var1) {
                ReaderTxtActivity.a(ReaderTxtActivity.this, var1);
            }
        });
    }

    private n w() {
        o o2 = this.b[this.k];
        if (o2 != null) {
            return o2.j();
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void x() {
        n n2 = this.w();
        if (n2 == null) {
            return;
        }
        if (!n2.e()) {
            this.x.clearAnimation();
            this.y();
            this.w = 0;
            this.j.setReadMode(0);
            return;
        }
        if (this.w == 1) {
            if (this.e.i()) {
                this.x.setText(n2.a(this));
            } else {
                this.x.setText(n2.c());
            }
            this.x.b();
        }
        this.j.setCurrentItem(1 + this.k, false);
        this.n();
    }

    private void y() {
        this.x.setVisibility(View.GONE);
        this.y.setVisibility(View.GONE);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void z() {
        this.x.setVisibility(View.VISIBLE);
        if (this.e.h()) {
            this.y.setBackgroundResource(R.drawable.auto_reader_bottom_shadow_night);
        } else {
            this.y.setBackgroundResource(R.drawable.auto_reader_bottom_shadow);
        }
        this.y.setVisibility(View.VISIBLE);
    }

    public final void a() {
        this.v.c();
        this.x.c();
    }

    public final void b() {
        this.v.d();
        this.x.d();
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void c() {
        Log.d("tag", "stopAutoReader");
        this.x.clearAnimation();
        this.w = 0;
        this.j.setReadMode(0);
        this.t();
        this.y();
        if (this.l) {
            this.t();
        } else {
            n n2 = this.w();
            if (n2 != null && n2.f()) {
                this.j.setCurrentItem(-1 + this.k, false);
                this.n();
            }
        }
    }

    public final void d() {
        this.x();
    }

    public final void e() {
        for (com.clilystudio.netbook.reader.o anArro : this.b) {
            anArro.a(-1, -1);
        }
    }

    @Override
    protected void onActivityResult(int n2, int n3, Intent intent) {
        this.f.a();
        if (this.g != null) {
            this.u();
            this.e.a(this.r);
            this.v();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onBackPressed() {
        super.onBackPressed();
        BookFile bookFile = new BookFile(new File(this.c));
        o o2 = this.b[1];
        if (o2 != null) {
            n n2 = o2.j();
            if (n2 == null) return;
            {
                int n3;
                int n4;
                bookFile.progressChapterIndex = n4 = n2.a().getIndex();
                bookFile.progressCharOffset = n3 = o2.j().b();
                ChapterLink[] arrchapterLink = this.d.d();
                int n5 = 0;
                int n6 = 0;
                for (int i2 = 0; i2 < arrchapterLink.length; ++i2) {
                    ChapterLink chapterLink = arrchapterLink[i2];
                    n6 += chapterLink.getTxtCharLength();
                    if (i2 < n4) {
                        n5 += chapterLink.getTxtCharLength();
                    } else if (i2 == n4) {
                        n5 += n3;
                    }
                    bookFile.progress = (float) n5 / (float) n6;
                }
            }
        } else {
            TxtFileObject.updateProgress(bookFile);
            com.clilystudio.netbook.event.i.a().post(new com.clilystudio.netbook.event.A());
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.getWindow().addFlags(256);
        this.getWindow().addFlags(512);
        this.s = com.clilystudio.netbook.hpay100.a.a.l(this, "reader_orientation");
        this.f();
        this.setContentView(R.layout.activity_reader_txt);
        this.c = this.getIntent().getStringExtra("file_name");
        if (bundle != null) {
            this.k = bundle.getInt("SaveSelectedPageIndex", 0);
            this.t = bundle.getBoolean("SaveChangeOrientation");
        }
        this.j = (PagerWidget) this.findViewById(R.id.main_view);
        this.u = this.findViewById(R.id.reader_content_loading);
        this.o = (ReaderActionBar) this.findViewById(R.id.reader_txt_action_bar);
        this.p = (SettingWidget) this.findViewById(R.id.setting_widget);
        this.e = new bZ(this);
        this.f = new bH(this);
        this.d = new Reader(this.c);
        this.v = (AutoReaderSetWidget) this.findViewById(R.id.auto_reader_setting);
        this.x = (AutoReaderTextView) this.findViewById(R.id.tv_auto_reader_body);
        this.y = this.findViewById(R.id.view_auto_reader_shadow);
        this.e.a(new cc() {
            @Override
            public void a() {
                o[] arro = ReaderTxtActivity.d(ReaderTxtActivity.this);
                for (com.clilystudio.netbook.reader.o anArro : arro) {
                    anArro.a();
                }
                ReaderTxtActivity.o(ReaderTxtActivity.this);
                ReaderTxtActivity.p(ReaderTxtActivity.this);
            }
        });
        this.e.a(new cb() {
            @Override
            public void a() {
                ReaderTxtActivity.p(ReaderTxtActivity.this);
            }
        });
        this.e.a(new ce() {
            @Override
            public void a() {
                for (o o2 : ReaderTxtActivity.d(ReaderTxtActivity.this)) {
                    if (o2 != null) {
                        o2.b();
                    }
                }
                ReaderTxtActivity.q(ReaderTxtActivity.this);
            }
        });
        this.e.a(new ca() {
            @Override
            public void a() {
                ReaderTxtActivity.r(ReaderTxtActivity.this);
            }
        });
        this.e.a(new cd() {
            @Override
            public void a() {
                for (o o2 : ReaderTxtActivity.d(ReaderTxtActivity.this)) {
                    if (o2 != null) {
                        o2.c();
                    }
                }
                ReaderTxtActivity.q(ReaderTxtActivity.this);
            }
        });
        this.m();
        this.x.setTextColor(this.e.g);
        this.x.setHeight(this.e.e);
        this.x.setTextSize(0, this.e.a);
        this.x.setLineSpacing(this.e.b, 1.0f);
        if (this.e.h == R.drawable.reader_background_brown_big_img) {
            this.x.setBackgroundResource(R.drawable.reader_background_brown_auto_img);
        } else {
            this.x.setBackgroundResource(this.e.h);
        }
        this.o.setReaderStyle(this.e);
        this.o.b(this.s);
        this.o.c(false);
        this.o.d(false);
        this.o.e(false);
        this.o.g(false);
        this.o.setOnBtnClickListener(new ReaderActionBar.OnBtnClickListener() {

            @Override
            public void a(int n2) {
                switch (n2) {
                    case R.id.read_opt_setting:
                        ReaderTxtActivity.s(ReaderTxtActivity.this).a();
                        break;
                    case R.id.read_opt_toc:
                        ReaderTxtActivity.a(ReaderTxtActivity.this);
                        ReaderTxtActivity.t(ReaderTxtActivity.this);
                        break;
                    case R.id.reader_oper_back:
                        ReaderTxtActivity.this.onBackPressed();
                        break;
                    case R.id.read_opt_orientation:
                        ReaderTxtActivity.b(ReaderTxtActivity.this, true);
                        ReaderTxtActivity.u(ReaderTxtActivity.this);
                        break;
                }
            }
        });
        this.p.setReaderStyle(this.e, this.o);
        this.p.a(new db() {
            @Override
            public void a() {
                startActivityForResult(ReaderOptionActivity.a(ReaderTxtActivity.this), 0);
            }
        });
        this.p.a(new dc() {
            @Override
            public void a() {
                ReaderTxtActivity.a(ReaderTxtActivity.this);
                ReaderTxtActivity.a(ReaderTxtActivity.this, 1);
                ReaderTxtActivity.c(ReaderTxtActivity.this).setReadMode(ReaderTxtActivity.b(ReaderTxtActivity.this));
                ReaderTxtActivity.f(ReaderTxtActivity.this).setTotalHeight(ReaderTxtActivity.d(ReaderTxtActivity.this)[ReaderTxtActivity.e(ReaderTxtActivity.this)].d());
                if (ReaderTxtActivity.g(ReaderTxtActivity.this).i()) {
                    ReaderTxtActivity.f(ReaderTxtActivity.this).setText(ReaderTxtActivity.h(ReaderTxtActivity.this).a(ReaderTxtActivity.this));
                } else {
                    ReaderTxtActivity.f(ReaderTxtActivity.this).setText(ReaderTxtActivity.h(ReaderTxtActivity.this).c());
                }
                ReaderTxtActivity.f(ReaderTxtActivity.this).f();
                ReaderTxtActivity.i(ReaderTxtActivity.this);
            }
        });
        this.v.setOptionClickListener(this);
        this.x.setOnPageTurning(this);
        this.j.setAutoReaderTextView(this.x);
        this.n = this.getWindow().getDecorView();
        if (com.clilystudio.netbook.hpay100.a.a.h()) {
            this.n.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() {
                @Override
                public void onSystemUiVisibilityChange(int visibility) {
                    boolean bl = (visibility & 1) == 0;
                    ReaderTxtActivity.d(ReaderTxtActivity.this, bl);
                }
            });
        }
        this.u();
        if (!this.t) {
            this.k();
            return;
        }
        Reader reader = MyApplication.a().b();
        if (reader != null) {
            this.d = reader;
            this.r();
            return;
        }
        this.k();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onDestroy() {
        try {
            this.unregisterReceiver(this.K);
            this.unregisterReceiver(this.L);
        } catch (IllegalArgumentException var1_1) {
            var1_1.printStackTrace();
        }
        this.i();
        super.onDestroy();
    }

    @Override
    public boolean onKeyDown(int n2, KeyEvent keyEvent) {
        switch (n2) {
            default: {
                return super.onKeyDown(n2, keyEvent);
            }
            case 25: {
                if (this.f.b() && this.w == 0) {
                    this.p();
                    return true;
                }
                return false;
            }
            case 24:
        }
        if (this.f.b() && this.w == 0) {
            this.q();
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean onKeyUp(int n2, KeyEvent keyEvent) {
        if (n2 == 82) {
            this.s();
            return true;
        } else {
            return n2 == 25 || n2 == 24 || super.onKeyUp(n2, keyEvent);
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        this.getWindow().addFlags(128);
        this.A();
        this.t();
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("SaveSelectedPageIndex", this.k);
        bundle.putBoolean("SaveChangeOrientation", this.t);
    }

    @Override
    public void onUserInteraction() {
        super.onUserInteraction();
        this.A();
    }
}
