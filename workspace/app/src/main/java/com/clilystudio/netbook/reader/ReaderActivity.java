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
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.preference.PreferenceManager;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v4.view.PagerAdapter;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.PopupMenu;
import android.widget.PopupWindow;
import android.widget.TextView;

import com.clilystudio.netbook.CachePathConst;
import com.clilystudio.netbook.IntentBuilder;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.BookSyncRecord;
import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.db.MixTocRecord;
import com.clilystudio.netbook.db.TocReadRecord;
import com.clilystudio.netbook.event.BookReadEvent;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.ConvertChangedEvent;
import com.clilystudio.netbook.event.DownloadStatusEvent;
import com.clilystudio.netbook.event.ModeChangedEvent;
import com.clilystudio.netbook.event.ThemeChangedEvent;
import com.clilystudio.netbook.model.ChapterKeysRoot;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.TopicCount;
import com.clilystudio.netbook.reader.dl.BookDownloadManager;
import com.clilystudio.netbook.ui.BaseReadSlmActivity;
import com.clilystudio.netbook.ui.BookInfoActivity;
import com.clilystudio.netbook.util.BookInfoUtil;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.util.ToastUtil;
import com.clilystudio.netbook.widget.ThemeLoadingView;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;
import com.squareup.otto.Subscribe;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import uk.me.lewisdeane.ldialogs.BaseDialog;

public class ReaderActivity extends BaseReadSlmActivity implements View.OnClickListener,
        AutoReaderSetWidget.a,
        AutoReaderTextView.d_interface {
    private int mDownloadStopFlag;
    private View mDownloadProgressView;
    private TextView mmDownloadProgressCurrentTV;
    private String mDownloadLink;
    private boolean mIsDownloading;
    private boolean mIsFullScreen;
    private boolean mIsPortrait;
    private boolean mChangeOrientation;
    private boolean mIsShowToc = false;
    private boolean mTocDisable = false;
    private boolean mModeDisable = false;
    private int mReadMode;
    private int M = 0;
    private boolean mHasOtherSource;
    private ThemeLoadingView mLoadingView;
    private int mTocCount;
    private int mNeedDownloadCount;
    private ReaderMenuFragment mReaderMenuFragment = null;
    private PopupWindow mPopWindow;
    private AutoReaderTextView mReaderBodyTV;
    private View mShadowView;
    private int W;
    private int X;
    private String[] Y;
    private int Z = 0;
    private LinkedList<Integer> aa;
    private PowerManager.WakeLock ab = null;
    private Runnable ad;
    private BroadcastReceiver mDownloadReceiver;
    private Handler af;
    private BroadcastReceiver ag;
    private BroadcastReceiver ah;
    private ReaderPageManager[] b = new ReaderPageManager[3];
    private String mBookId;
    private String mBookTitle;
    private String mTocId;
    private String mSourceHost;
    private Reader mReader;
    private ReaderStyle mReaderStyle;
    private bH i;
    private ReaderPageTransformer j;
    private ReaderTocDialog mReaderTocDialog;
    private Handler l = new Handler();
    private PagerWidget mMainView;
    private int mSelectedPageIndex;
    private boolean o = true;
    private boolean p = true;
    private View q;
    private ReaderActionBar r;
    private SettingWidget s;
    private AutoReaderSetWidget t;
    //    private boolean v = false;
    private int w = -1;
    private LinkedList<String> x = new LinkedList<>();
    private int mDownloadCurrentCount;
    private int mDownloadChapterCount;

    public ReaderActivity() {
        this.ad = new Runnable() {
            @Override
            public void run() {
                getWindow().clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
            }
        };
        this.mDownloadReceiver = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                if ("com.clilystudio.netbook.dlReceiver".equals(intent.getAction())) {
                    String string = intent.getStringExtra("bookId");
                    if (ReaderActivity.this.mBookId.equals(string)) {
                        ReaderActivity.this.mIsDownloading = true;
                        ReaderActivity.this.mDownloadCurrentCount = intent.getIntExtra("SerDlCurrentCount", 0);
                        ReaderActivity.this.mDownloadChapterCount = intent.getIntExtra("SerDlChapterCount", 0);
                        ReaderActivity.this.mDownloadLink = intent.getStringExtra("SerDlLink");
                        ReaderActivity.this.mDownloadStopFlag = intent.getIntExtra("SerDlStopFlag", 0);
                        ReaderActivity.this.af.sendMessage(ReaderActivity.this.af.obtainMessage());
                    }
                }
            }
        };
        this.af = new Handler() {

            @Override
            public void handleMessage(Message msg) {
                super.handleMessage(msg);
                String string = "";
                if (ReaderActivity.this.mDownloadStopFlag == 0 && ReaderActivity.this.mDownloadCurrentCount < ReaderActivity.this.mDownloadChapterCount) {
                    string = "正在缓存: " + ReaderActivity.this.mBookTitle + " ( " + ReaderActivity.this.mDownloadCurrentCount + "/" + ReaderActivity.this.mDownloadChapterCount + " )...";
                } else if (ReaderActivity.this.mDownloadStopFlag == -1 || ReaderActivity.this.mDownloadCurrentCount >= ReaderActivity.this.mDownloadChapterCount) {
                    string = "缓存完成: " + ReaderActivity.this.mBookTitle;
                } else if (ReaderActivity.this.mDownloadStopFlag == -2) {
                    string = "已停止: " + ReaderActivity.this.mBookTitle + " ( " + ReaderActivity.this.mDownloadCurrentCount + "/" + ReaderActivity.this.mDownloadChapterCount + " )";
                }
                ReaderActivity.this.mmDownloadProgressCurrentTV.setText(string);
                ReaderActivity.this.x.add(ReaderActivity.this.mDownloadLink);

            }
        };
        this.ag = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                int n2 = intent.getIntExtra("level", 0);
                int n3 = intent.getIntExtra("scale", 100);
                int n4 = n2 * 100 / n3;
                if (ReaderActivity.this.w != n4) {
                    ReaderActivity.this.w = n4;
                    ReaderPageManager[] arro = ReaderActivity.this.b;
                    for (ReaderPageManager anArro : arro) {
                        anArro.a(n4);
                    }
                }
            }
        };
        this.ah = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                ReaderPageManager[] arro = ReaderActivity.this.b;
                for (ReaderPageManager anArro : arro) {
                    anArro.k();
                }
            }
        };
    }

    static /* synthetic */ void C(final ReaderActivity readerActivity) {
        if (readerActivity.mTocDisable || readerActivity.mModeDisable) {
            ToastUtil.showShortToast(readerActivity, "缓存不可用");
            return;
        }
        boolean bl = CommonUtil.getDownloadStatus(readerActivity.mBookId) == 2;
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
                    BusProvider.getInstance().post(new DownloadStatusEvent(readerActivity.mBookId, 3));
                }
            }).show();
        } else {
            CharSequence[] arrcharSequence = new String[]{readerActivity.getString(R.string.chapter_dl_count_50), readerActivity.getString(R.string.chapter_dl_count_after), readerActivity.getString(R.string.all)};
            new BaseDialog.Builder(readerActivity).setTitle(R.string.chapter_dl_title).setSingleChoiceItems(arrcharSequence, 0, new DialogInterface.OnClickListener() {

                @Override
                public void onClick(DialogInterface dialog, int which) {
                    int n3 = 1;
                    int n4 = readerActivity.mReader.k();
                    if (which == 0) {
                        readerActivity.mDownloadChapterCount = 50;
                    } else if (which == n3) {
                        readerActivity.mDownloadChapterCount = readerActivity.mReader.f() - n4;
                    } else if (which == 2) {
                        readerActivity.mDownloadChapterCount = readerActivity.mReader.f();
                        n4 = 0;
                    }
                    if (BookReadRecord.getOnShelf(readerActivity.mBookId) == null) {
                        n3 = 0;
                    }
                    if (n3 == 0) {
                        ReaderActivity.ad(readerActivity);
                    }
                    readerActivity.mDownloadProgressView.setVisibility(View.VISIBLE);
                    BookDownloadManager a2 = new BookDownloadManager(readerActivity);
                    MyApplication.getInstance().getChapterCacheMap().put(readerActivity.mBookId, readerActivity.mReader.d());
                    a2.startDownload(readerActivity.mBookId, n4, readerActivity.mDownloadChapterCount);
                }
            }).create().show();
        }
    }

    public static Intent a(Context context, String bookId, String bookTitle, String tocId, String sourceHost, boolean isShowToc) {
        return new IntentBuilder().put(context, ReaderActivity.class).put("BOOK_ID", bookId).put("BOOK_TITLE", bookTitle).put("TOC_ID", tocId).put("SOURCE_HOST", sourceHost).putSerializable("IS_SHOW_TOC", isShowToc).build();
    }

    public static Intent a(Context context, String bookId, String bookTitle, String tocId, HashMap<String, String> chapterKeys, boolean hasOtherSource) {
        return new IntentBuilder().put(context, ReaderActivity.class).put("BOOK_ID", bookId).put("BOOK_TITLE", bookTitle).put("TOC_ID", tocId).put("SOURCE_HOST", (String) null).putSerializable("IS_SHOW_TOC", false).putSerializable("CHAPTERS_KEY", chapterKeys).putSerializable("HAS_OTHER_SOURCES", hasOtherSource).build();
    }

    public static Intent a(Context context, String string, String string2, String string3, boolean bl2) {
        return new IntentBuilder().put(context, ReaderActivity.class).put("BOOK_ID", string).put("BOOK_TITLE", string2).put("TOC_ID", string3).put("SOURCE_HOST", (String) null).putSerializable("IS_SHOW_TOC", false).putSerializable("HAS_OTHER_SOURCES", bl2).build();
    }

    static /* synthetic */ void a(final ReaderActivity readerActivity, View view) {
        PopupMenu popupMenu = new PopupMenu(readerActivity, view, 53);
        popupMenu.getMenuInflater().inflate(R.menu.reader_more_menu, popupMenu.getMenu());
        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() {
            @Override
            public boolean onMenuItemClick(MenuItem item) {
                switch (item.getItemId()) {
                    case R.id.menu_item_1:
                        readerActivity.O();
                        break;
                    case R.id.menu_item_2:
                        Intent var2_2 = BookInfoActivity.a(readerActivity, readerActivity.mBookId);
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
    static /* synthetic */ void a(final ReaderActivity readerActivity, final ReaderLineInfo n2) {
        if (!n2.f()) {
            readerActivity.b[0].a(n2, true);
            readerActivity.mMainView.setCurrentItem(0, false);
            n2.a(new Reader.OnPageTransListener<ReaderLineInfo>() {

                @Override
                public void onPageTrans(ReaderLineInfo var1) {
                    readerActivity.b[1].a(var1);
                    if (var1 != null) {
                        var1.a(new Reader.OnPageTransListener<ReaderLineInfo>() {

                            @Override
                            public void onPageTrans(ReaderLineInfo var11) {
                                readerActivity.b[2].a(var11);
                                readerActivity.x();
                            }
                        });
                    }
                }
            });
        } else if (!n2.hasMore()) {
            readerActivity.b[2].a(n2, true);
            readerActivity.mMainView.setCurrentItem(2, false);
            n2.b(new Reader.OnPageTransListener<ReaderLineInfo>() {

                @Override
                public void onPageTrans(ReaderLineInfo var1) {
                    readerActivity.b[1].a(var1);
                    n2.b(new Reader.OnPageTransListener<ReaderLineInfo>() {
                        @Override
                        public void onPageTrans(ReaderLineInfo var11) {
                            readerActivity.b[0].a(var11);
                            readerActivity.x();
                        }
                    });
                }
            });
        } else {
            readerActivity.b[1].a(n2, true);
            readerActivity.mMainView.setCurrentItem(1, false);
            n2.a(new Reader.OnPageTransListener<ReaderLineInfo>() {

                @Override
                public void onPageTrans(ReaderLineInfo var1) {
                    readerActivity.b[2].a(var1);
                    n2.b(new Reader.OnPageTransListener<ReaderLineInfo>() {

                        @Override
                        public void onPageTrans(ReaderLineInfo var11) {
                            readerActivity.b[0].a(var11);
                            readerActivity.x();
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

    static /* synthetic */ void ad(ReaderActivity readerActivity) {
        readerActivity.mReader.a();
        CommonUtil.syncBookShelf(readerActivity.mBookId, BookSyncRecord.BookModifyType.SHELF_ADD);
        String string = readerActivity.getString(R.string.add_book_event);
        Object[] arrobject = new Object[]{readerActivity.mBookTitle};
        ToastUtil.showShortToast(readerActivity, String.format(string, arrobject));
    }

    static /* synthetic */ void ag(ReaderActivity readerActivity) {
        CharSequence charSequence = readerActivity.r.b().getText();
        if (charSequence != null) {
            CommonUtil.viewChapterLink(readerActivity, charSequence.toString(), null);
        }
    }

    static /* synthetic */ void b(ReaderActivity readerActivity, View view) {
        View view2 = readerActivity.getLayoutInflater().inflate(R.layout.reader_popupwindow_layout, (ViewGroup) readerActivity.getWindow().getDecorView(), false);
        view2.findViewById(R.id.menu_item_1).setOnClickListener(readerActivity);
        view2.findViewById(R.id.menu_item_2).setOnClickListener(readerActivity);
        view2.findViewById(R.id.menu_item_3).setOnClickListener(readerActivity);
        readerActivity.mPopWindow = new PopupWindow(view2, readerActivity.getResources().getDimensionPixelSize(R.dimen.reader_popup_width), -2);
        readerActivity.mPopWindow.setFocusable(true);
        readerActivity.mPopWindow.setOutsideTouchable(true);
        readerActivity.mPopWindow.setBackgroundDrawable(new ColorDrawable(0));
        readerActivity.mPopWindow.getContentView().setFocusableInTouchMode(true);
        readerActivity.mPopWindow.getContentView().setFocusable(true);
        int[] arrn = new int[2];
        view.getLocationOnScreen(arrn);
        readerActivity.mPopWindow.showAtLocation(view, 0, arrn[0] - readerActivity.mPopWindow.getWidth() + view.getWidth(), CommonUtil.getActionBarHeight(readerActivity) + CommonUtil.getStatusBarHeight(readerActivity));
    }

    static /* synthetic */ void u(ReaderActivity readerActivity) {
        if (readerActivity.mReaderStyle.h == R.drawable.reader_background_brown_big_img) {
            readerActivity.mReaderBodyTV.setBackgroundResource(R.drawable.reader_background_brown_auto_img);
        } else {
            readerActivity.mReaderBodyTV.setBackgroundResource(readerActivity.mReaderStyle.h);
        }
        readerActivity.mReaderBodyTV.setTextColor(readerActivity.mReaderStyle.bodyColor);
    }

    private ReaderLineInfo A() {
        ReaderPageManager o2 = this.b[this.mSelectedPageIndex];
        if (o2 != null) {
            return o2.j();
        }
        return null;
    }

    private void B() {
        if (this.mChangeOrientation) {
            this.j.setReader(this.mReader);
        }
        this.mMainView.setOnPageChangeListener(new ReaderViewPager.OnPageChangeListener() {
            @Override
            public void a(int pageIndex) {
                ReaderActivity.this.mSelectedPageIndex = pageIndex;
            }

            @Override
            public void b(int var1) {
                if (var1 == 2) {
                    ReaderActivity.this.H();
                } else if (var1 == 0) {
                    ReaderActivity.this.v();
                }
            }
        });
        this.mMainView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                switch ((int) v.getTag()) {
                    case 0:
                        ReaderActivity.this.F();
                        break;
                    case 1:
                        if (ReaderActivity.this.i.e()) {
                            ReaderActivity.this.y();
                        } else {
                            ReaderActivity.this.z();
                        }
                        break;
                    case 2:
                        ReaderActivity.this.y();
                        break;
                }
            }
        });
        if (this.mBookId.equals(MyApplication.getInstance().getBookId())) {
            int i = -1;
            BookReadRecord bookReadRecord = BookReadRecord.getOnShelf(this.mBookId);
            if (bookReadRecord != null && this.mReader != null) {
                int tocIndex = bookReadRecord.getTocIndex();
                String chapterTitle = bookReadRecord.getChapterTitle();
                i = this.mReader.g();
                if (tocIndex <= i) {
                    i = tocIndex;
                }
                ChapterNameParser ae2 = new ChapterNameParser();
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
                this.mReader.a(i, 0);
            }
            MyApplication.getInstance().setBookId(null);
        }
        MyApplication.getInstance().setReader(this.mReader);
        if (!this.q() && !CommonUtil.canDownload(this.mReadMode)) {
            if (!this.mIsShowToc || this.mChangeOrientation) {
                this.g();
            } else {
                this.D();
            }
        } else {
            if ((!this.q() && TocReadRecord.get(this.mTocId) == null) || MixTocRecord.get(this.mTocId) == null) {
                this.c(0);
            } else {
                this.g();
            }
        }
    }

    private void C() {
        ReaderPageManager.G aL2 = new ReaderPageManager.G() {
            @Override
            public void a(int var1) {
                ReaderActivity.this.c(var1);
            }
        };
        ReaderPageManager.OnReloadSourceListener aM2 = new ReaderPageManager.OnReloadSourceListener() {
            @Override
            public void onReload() {
                ReaderActivity.this.t();
            }
        };
        ReaderPageManager.OnSourceChangeListener aN2 = new ReaderPageManager.OnSourceChangeListener() {
            @Override
            public void onChanged() {
                if (ReaderActivity.this.mReadMode == 5 || ReaderActivity.this.mReadMode == 10) {
                    ReaderActivity.this.i();
                } else {
                    ReaderActivity.this.O();
                }
            }
        };
        for (int k = 0; k < 3; ++k) {
            ReaderPageManager o2;
            this.b[k] = o2 = new ReaderPageManager(this, this.mReaderStyle);
            o2.a(aL2);
            o2.a(aM2);
            o2.setSourceChangeListener(aN2);
        }
        this.registerReceiver(this.ag, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        this.registerReceiver(this.ah, new IntentFilter("android.intent.action.TIME_TICK"));
    }

    private void D() {
        if (this.isFinishing()) {
            return;
        }
        if (this.mReaderTocDialog == null) {
            this.mReaderTocDialog = new ReaderTocDialog();
            this.mReaderTocDialog.a(this.mReader, this.x);
            this.mReaderTocDialog.a(new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    ReaderActivity.this.c(which);
                    ReaderActivity.this.mReaderTocDialog.dismiss();
                }
            });
            this.mReaderTocDialog.a(new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    if (ReaderActivity.this.mIsShowToc && !ReaderActivity.this.mChangeOrientation) {
                        ReaderActivity.this.finish();
                    }
                }
            });
            this.mReaderTocDialog.a(new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    ReaderActivity.this.mIsShowToc = false;
                }
            });
        }
        addReaderTocDialog();
    }

    public void addReaderTocDialog() {
        FragmentManager fragmentManager = getSupportFragmentManager();
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        Fragment fragment = fragmentManager.findFragmentByTag("ReaderTocDialog");
        if (fragment != null) {
            fragmentTransaction.remove(fragment);
        }
        fragmentTransaction.add(mReaderTocDialog, "ReaderTocDialog");
        fragmentTransaction.commitAllowingStateLoss();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void E() {
        if (this.b == null) {
            return;
        }
        ReaderPageManager[] arro = this.b;
        int n2 = arro.length;
        int n3 = 0;
        while (n3 < n2) {
            ReaderChapter readerChapter;
            ReaderLineInfo n4 = arro[n3].j();
            if (n4 != null && (readerChapter = n4.a()) != null) {
                readerChapter.setMaxIndex(this.mReader.g());
            }
            ++n3;
        }
    }

    private void F() {
        if (this.o) {
            this.H();
        } else {
            this.G();
        }
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
                if (this.mIsDownloading) {
                    this.mDownloadProgressView.setVisibility(View.VISIBLE);
                }
                ReaderLineInfo n2 = this.A();
                String string = null;
                if (n2 != null) {
                    ReaderChapter readerChapter = n2.a();
                    string = null;
                    if (readerChapter != null) {
                        string = n2.a().getLink();
                    }
                }
                this.r.setChapterLink(string);
                if (!this.p) {
                    this.q.setSystemUiVisibility(0);
                }
            } else {
                if (this.M == 1) {
                    this.mReaderBodyTV.clearAnimation();
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
                this.mReaderBodyTV.e();
            }
            this.mDownloadProgressView.setVisibility(View.GONE);
            this.getWindow().addFlags(1024);
            this.getWindow().clearFlags(2048);
            if (this.mIsFullScreen) {
                this.getWindow().addFlags(512);
            } else {
                this.getWindow().addFlags(2048);
                this.getWindow().clearFlags(1024);
                this.getWindow().clearFlags(512);
                if (this.p) {
                    this.q.setSystemUiVisibility(0);
                }
            }
        }
        if (this.i.f()) {
            if (this.p) {
                this.q.setSystemUiVisibility(2055);
            }
        } else {
            if (this.p) {
                this.q.setSystemUiVisibility(1);
            }
        }
    }

    private void I() {
        this.mReaderBodyTV.setVisibility(View.GONE);
        this.mShadowView.setVisibility(View.GONE);
    }

    private void J() {
        this.mIsFullScreen = CommonUtil.getBoolPref(this, "reader_opt_full_screen", true);
        this.r.a(this.mIsFullScreen);
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
        this.mReaderBodyTV.clearAnimation();
        this.M = 0;
        this.mMainView.setReadMode(0);
        this.H();
        this.I();
        if (this.o) {
            this.H();
        } else {
            ReaderLineInfo n2 = this.A();
            if (n2 != null && n2.f()) {
                this.mMainView.setCurrentItem(-1 + this.mSelectedPageIndex, false);
                this.v();
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void M() {
        if (this.b[this.mSelectedPageIndex].f()) {
            this.L();
            return;
        }
        if (!this.mReaderBodyTV.isShown()) {
            this.mReaderBodyTV.setVisibility(View.VISIBLE);
            if (this.mReaderStyle.h()) {
                this.mShadowView.setBackgroundResource(R.drawable.auto_reader_bottom_shadow_night);
            } else {
                this.mShadowView.setBackgroundResource(R.drawable.auto_reader_bottom_shadow);
            }
            this.mShadowView.setVisibility(View.VISIBLE);
        }
        this.mReaderBodyTV.a();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void N() {
        ReaderLineInfo n2 = this.A();
        if (n2 == null) {
            return;
        }
        this.E();
        if (!n2.hasMore() && this.w()) {
            ToastUtil.showShortToast(this, this.getString(R.string.auto_reader_end_notify));
            this.mReaderBodyTV.clearAnimation();
            this.I();
            this.M = 0;
            this.mMainView.setReadMode(0);
            return;
        }
        if (this.M == 1) {
            if (this.mReaderStyle.needCovert()) {
                this.mReaderBodyTV.setText(n2.a(this));
            } else {
                this.mReaderBodyTV.setText(n2.c());
            }
            this.mReaderBodyTV.b();
        }
        this.mMainView.setCurrentItem(1 + this.mSelectedPageIndex, false);
        this.v();
    }

    private void O() {
        this.P();
        this.startActivity(ModeListActivity.a(this, this.mBookId, this.mBookTitle, this.mReadMode));
        this.overridePendingTransition(R.anim.mode_list_enter_in, R.anim.mode_list_enter_out);
    }

    private void P() {
        BookReadRecord bookReadRecord;
        if (this.mReader != null && (bookReadRecord = BookReadRecord.get(this.mBookId)) != null) {
            bookReadRecord.setTocIndex(this.mReader.k());
            bookReadRecord.setChapterTitle(this.mReader.n());
            bookReadRecord.save();
        }
    }

    private void loadChapterList() {
        if (CommonUtil.isMounted()) {
            ArrayList<String> subFileList = CommonUtil.getSubFileList(new File(CachePathConst.RootPath, "/ZhuiShuShenQi/Chapter" + File.separator + this.mBookId + File.separator + this.mTocId));
            for (String s1 : subFileList) {
                String string = CommonUtil.decodeUrl(s1);
                this.x.add(string);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void R() {
        WindowManager.LayoutParams layoutParams = this.getWindow().getAttributes();
        layoutParams.screenBrightness = this.mReaderStyle.g() ? -1.0f : (float) this.mReaderStyle.f() / 255.0f;
        this.getWindow().setAttributes(layoutParams);
    }

    private void a(ReaderLineInfo n2) {
        if (n2 == null) {
            return;
        }
        SlidingMenu slidingMenu = this.getSlidingMenu();
        if (this.mTocDisable || this.mModeDisable) {
            slidingMenu.setSlidingEnabled(false);
            return;
        }
        if (n2.hasMore()) {
            slidingMenu.setSlidingEnabled(false);
        } else {
            slidingMenu.setSlidingEnabled(true);
        }
    }

    private void a(boolean bl) {
        if (this.b[this.mSelectedPageIndex].f()) {
            this.o();
        } else {
            if (this.Y == null) {
                ToastUtil.showShortToast(this, "获取章节内容失败,请退出后重试");
            } else if (bl && !this.Y[0].startsWith("　　")) {
                this.W = 0;
                this.X = 1 + this.Y[0].length();
                this.b[this.mSelectedPageIndex].a(this.W, this.X);
            } else {
                this.W = this.X;
                if (this.Z <= -1 + this.Y.length) {
                    this.X = 1 + (this.W + this.Y[this.Z].length());
                    this.b[this.mSelectedPageIndex].a(this.W, this.X);
                }
            }
        }
    }

    private boolean a(ChapterNameParser ae2, String string, int n2) {
        boolean bl = ae2.a(string, this.mReader.c(n2));
        boolean bl2 = false;
        if (bl) {
            this.mReader.a(n2);
            this.mReader.b(0);
            bl2 = true;
        }
        return bl2;
    }

    private void b(int n2) {
        this.j.a(new Reader.OnPageTransListener<ReaderLineInfo>() {

            @Override
            public void onPageTrans(ReaderLineInfo var1) {
                ReaderActivity.a(ReaderActivity.this, var1);
            }
        }, n2);
    }

    private void c(int n2) {
        this.j.b(n2, new Reader.OnPageTransListener<ReaderLineInfo>() {

            @Override
            public void onPageTrans(ReaderLineInfo var1) {
                ReaderActivity.a(ReaderActivity.this, var1);
                if (ReaderActivity.this.M == 2 && var1 != null) {
                    Object[] arrobject = var1.d();
                    if (arrobject != null) {
                        ReaderActivity.this.Y = (String[]) arrobject[0];
                        ReaderActivity.this.aa = (LinkedList<Integer>) arrobject[1];
                        ReaderActivity.this.a(false);
                    }
                }
            }
        }, true);
    }

    private void o() {
        this.M = 0;
        this.mMainView.setReadMode(this.M);
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
        return 5 == this.mReadMode;
    }

    private void s() {
        this.mReader.a(new Reader.ae() {
            @Override
            public void a() {
                ReaderActivity.this.mLoadingView.a();
            }

            @Override
            public void b() {
                if (ReaderActivity.this.mIsShowToc) {
                    ReaderActivity.this.mLoadingView.b();
                }
            }
        });
        this.mReader.b(new Reader.ae() {
            @Override
            public void a() {
                ReaderActivity.this.mLoadingView.a();
            }

            @Override
            public void b() {
                ReaderActivity.this.mLoadingView.b();
            }
        });
        this.t();
    }

    private void t() {
        boolean bl = true;
        if (!this.mIsShowToc) {
            bl = !this.getIntent().getBooleanExtra("extra_force_online", false);
        }
        this.mReader.a(new Reader.ad() {
            @Override
            public void a() {
                ReaderActivity.this.mTocDisable = false;
                ReaderActivity.this.B();
            }

            @Override
            public void b() {
                ReaderActivity.this.mTocDisable = true;
                ReaderActivity.this.mLoadingView.b();
                ReaderActivity.this.u();
                ReaderActivity.this.b(-4);
            }
        }, bl);
    }

    private void u() {
        this.mMainView.setAdapter(new PagerAdapter() {
            @Override
            public int getCount() {
                return 1;
            }

            @Override
            public Object instantiateItem(ViewGroup container, int position) {
                ReaderPageManager o2 = ReaderActivity.this.b[position];
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
        this.mMainView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if ((int) v.getTag() == 0) {
                    ReaderActivity.this.F();
                }
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    private void v() {
        ReaderLineInfo n2 = this.A();
        if (n2 != null && !n2.p()) {
            if (n2.nf() != 1) {
                int n3 = n2.l();
                this.j.a(n3, new Reader.OnPageTransListener<ReaderLineInfo>() {
                    @Override
                    public void onPageTrans(ReaderLineInfo var1) {
                        ReaderActivity.a(ReaderActivity.this, var1);
                    }
                }, true);
            } else {
                this.c(n2.l());
            }
        } else {
            final ReaderPageManager o2 = this.b[0];
            ReaderPageManager o3 = this.b[1];
            final ReaderPageManager o4 = this.b[2];
            ReaderLineInfo n4 = o2.j();
            ReaderLineInfo n5 = o3.j();
            ReaderLineInfo n6 = o4.j();
            if (this.mSelectedPageIndex == 2 && n6 != null) {
                if (!n6.hasMore() && !this.w()) {
                    final int n7 = this.mReader.f();
                    this.mLoadingView.a();
                    this.mReader.setaf(new Reader.af() {
                        @Override
                        public void a() {
                            ReaderActivity.this.mLoadingView.b();
                            ChapterLink[] arrchapterLink = ReaderActivity.this.mReader.d();
                            if (arrchapterLink == null) return;
                            if (n7 < arrchapterLink.length) {
                                ReaderActivity.this.c(arrchapterLink.length);
                                return;
                            }
                            ReaderActivity.this.toggle();
                        }

                        @Override
                        public void b() {
                            ReaderActivity.this.mLoadingView.b();
                        }
                    });
                } else {
                    o3.a(n6, true);
                    this.mMainView.setCurrentItem(1, false);
                    o2.a(n5);
                    n6.a(new Reader.OnPageTransListener<ReaderLineInfo>() {

                        @Override
                        public void onPageTrans(ReaderLineInfo var1) {
                            o4.a(var1);
                        }
                    });
                    this.x();
                    this.a(n2);
                    if (this.M == 1) {
                        this.M();
                    } else if (this.M == 2) {
                        if (this.aa.size() != 0) {
                            this.b[this.mSelectedPageIndex].a(0, 1 + n6.c().length());
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
                if (this.mSelectedPageIndex == 0 && n4 != null && n4.f()) {
                    o3.a(n4, true);
                    this.mMainView.setCurrentItem(1, false);
                    o4.a(n5);
                    n4.b(new Reader.OnPageTransListener<ReaderLineInfo>() {
                        @Override
                        public void onPageTrans(ReaderLineInfo var1) {
                            o2.a(var1);
                        }
                    });
                    this.x();
                    this.a(n2);
                } else if (this.mSelectedPageIndex == 1) {
                    if (this.M == 1) {
                        this.M();
                    } else if (this.M == 2) {
                        if (this.aa.size() != 0) {
                            this.b[this.mSelectedPageIndex].a(0, 1 + n5.c().length());
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
        BaseAsyncTask<String, Void, Boolean> ag2 = this.mReader.b();
        return ag2 == null || ag2.getStatus() == AsyncTask.Status.FINISHED;
    }

    private void x() {
        ReaderLineInfo n2 = this.A();
        if (n2 == null) {
            return;
        }
        this.mReader.a(n2.l(), n2.m());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void y() {
        if (this.o) {
            this.H();
        } else {
            ReaderLineInfo n2 = this.A();
            if (n2 != null) {
                this.E();
                if (!n2.hasMore() && this.w()) {
                    this.toggle();
                } else if (!this.i.c()) {
                    this.mMainView.setCurrentItem(1 + this.mSelectedPageIndex, false);
                    this.v();
                } else if (!this.mMainView.a(1 + this.mSelectedPageIndex)) {
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
        ReaderLineInfo n2 = this.A();
        if (n2 == null) return;
        {
            if (!n2.f()) {
                ToastUtil.showToast(this, R.string.is_first);
                return;
            }
            if (this.i.c()) {
                this.mMainView.a(-1 + this.mSelectedPageIndex);
                return;
            }
        }
        this.mMainView.setCurrentItem(-1 + this.mSelectedPageIndex, false);
        this.v();
    }

    public final void a() {
        this.t.c();
        this.mReaderBodyTV.c();
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
        this.mNeedDownloadCount = 0;
        textView.setVisibility(View.GONE);
    }

    public final void b() {
        this.t.d();
        this.mReaderBodyTV.d();
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
        for (ReaderPageManager anArro : this.b) {
            anArro.a(-1, -1);
        }
    }

    public final String f() {
        return this.mTocId;
    }

    public final void g() {
        this.j.a(new Reader.OnPageTransListener<ReaderLineInfo>() {

            @Override
            public void onPageTrans(ReaderLineInfo var1) {
                ReaderActivity.a(ReaderActivity.this, var1);
            }
        });
    }

    public final String h() {
        if (this.mReader != null) {
            return this.mReader.i();
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void i() {
        this.P();
        String source = this.mReader != null && this.mReader.i() != null ? this.mReader.i() : this.mSourceHost;
        BookInfoUtil.source = source;
        this.startActivity(ReaderMixActivity.a(this, this.mBookId, this.mBookTitle, source));
        this.overridePendingTransition(R.anim.mode_list_enter_in, R.anim.mode_list_enter_out);
    }

    public final boolean j() {
        return this.b.length > this.mSelectedPageIndex && this.b[this.mSelectedPageIndex].f();
    }

    public final String l() {
        return this.mBookId;
    }

    public final boolean m() {
        return this.mHasOtherSource;
    }

    @Override
    protected void onActivityResult(int n2, int n3, Intent intent) {
        super.onActivityResult(n2, n3, intent);
        this.i.a();
        if (this.j != null) {
            this.J();
            this.mReaderStyle.a(this.mIsFullScreen);
            this.g();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onBackPressed() {
        if (this.mReader.m()) {
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
    }

    @Override
    public void onClick(View view) {
        if (this.mPopWindow != null) {
            this.mPopWindow.dismiss();
        }
        switch (view.getId()) {
            case R.id.menu_item_1:
                this.O();
                break;
            case R.id.menu_item_2:
                this.startActivity(BookInfoActivity.a(this, this.mBookId));
                break;
        }
    }

    @Subscribe
    public void onConvertChanged(ConvertChangedEvent j2) {
        this.mReaderStyle.b();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.getWindow().addFlags(WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN);
        this.getWindow().addFlags(WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS);
        this.mIsPortrait = PreferenceManager.getDefaultSharedPreferences(this).getBoolean("reader_orientation", true);
        if (this.mIsPortrait) {
            this.setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
        } else {
            this.setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
        }
        this.setContentView(R.layout.activity_reader);
        BusProvider.getInstance().register(this);
        Intent intent = getIntent();
        this.mBookId = intent.getStringExtra("BOOK_ID");
        this.mBookTitle = intent.getStringExtra("BOOK_TITLE");
        this.mSourceHost = intent.getStringExtra("SOURCE_HOST");
        this.mIsShowToc = intent.getBooleanExtra("IS_SHOW_TOC", false);
        String tocId = intent.getStringExtra("TOC_ID");
        if ("MIX_TOC_ID".equals(tocId)) {
            tocId = "MIX_TOC_ID" + this.mBookId;
        }
        this.mTocId = tocId;
        BookReadRecord bookReadRecord = BookReadRecord.get(this.mBookId);
        this.mReadMode = bookReadRecord != null ? bookReadRecord.getReadMode() : MyApplication.getInstance().getReadMode();
        this.mHasOtherSource = intent.getBooleanExtra("HAS_OTHER_SOURCES", true);
        BookInfoUtil.bookId = this.mBookId;
        BookInfoUtil.title = this.mBookTitle;
        BookInfoUtil.source = this.mSourceHost;
        BookInfoUtil.tocId = this.mTocId;
        BookInfoUtil.readMode = this.mReadMode;
        this.mReader = new Reader(this.mBookId, this.mTocId, this.mBookTitle, this.mReadMode);
        this.mReader.setSourceId(intent.getStringExtra("SOURCE_ID"));
        this.mReader.setChaptersKey((Map<String, String>) intent.getSerializableExtra("CHAPTERS_KEY"));
        if (bundle != null) {
            this.mSelectedPageIndex = bundle.getInt("SaveSelectedPageIndex", 0);
            this.mChangeOrientation = bundle.getBoolean("SaveChangeOrientation");
            this.mTocDisable = bundle.getBoolean("SaveTocDisable");
            this.mModeDisable = bundle.getBoolean("SaveModeDisable");
        }
        loadChapterList();
        FragmentTransaction fragmentTransaction = this.getSupportFragmentManager().beginTransaction();
        this.mReaderMenuFragment = getReaderMenuFragment(this.mBookId, this.mBookTitle);
        fragmentTransaction.replace(R.id.menu_frame, this.mReaderMenuFragment);
        fragmentTransaction.commitAllowingStateLoss();
        SlidingMenu slidingMenu = this.getSlidingMenu();
        slidingMenu.setMode(SlidingMenu.RIGHT);
        slidingMenu.setShadowWidthRes(R.dimen.shadow_width_app_recommend);
        slidingMenu.setShadowDrawable(R.drawable.shadowright);
        slidingMenu.setBehindOffsetRes(R.dimen.slidingmenu_offset_reader);
        slidingMenu.setFadeDegree(0.35f);
        slidingMenu.setBehindScrollScale(0.0f);
        slidingMenu.setTouchModeAbove(SlidingMenu.TOUCHMODE_FULLSCREEN);
        slidingMenu.setSlidingEnabled(false);
        slidingMenu.setOnOpenedListener(new SlidingMenu.OnOpenedListener() {
            @Override
            public void onOpened() {
                ReaderActivity.this.G();
                ReaderActivity.this.a(ReaderActivity.this.mNeedDownloadCount);
            }
        });
        this.mMainView = (PagerWidget) this.findViewById(R.id.main_view);
        this.r = (ReaderActionBar) this.findViewById(R.id.bottom_action_bar);
        this.s = (SettingWidget) this.findViewById(R.id.setting_widget);
        this.t = (AutoReaderSetWidget) this.findViewById(R.id.auto_reader_setting);
        this.mDownloadProgressView = this.findViewById(R.id.reader_download_pro);
        this.mmDownloadProgressCurrentTV = (TextView) this.findViewById(R.id.reader_download_pro_current);
        this.mReaderBodyTV = (AutoReaderTextView) this.findViewById(R.id.tv_auto_reader_body);
        this.mShadowView = this.findViewById(R.id.view_auto_reader_shadow);
        this.mReaderStyle = new ReaderStyle(this);
        this.mLoadingView = (ThemeLoadingView) this.findViewById(R.id.reader_content_loading);
        this.mLoadingView.setVisibility(View.GONE);
        this.mLoadingView.a(this.mReaderStyle.h());
        this.i = new bH(this);
        this.mReaderStyle.a(new ReaderStyle.cc() {
            @Override
            public void a() {
                for (ReaderPageManager o2 : ReaderActivity.this.b) {
                    if (o2 != null) {
                        o2.a();
                    }
                }
                ReaderActivity.this.mReaderBodyTV.setHeight(ReaderActivity.this.mReaderStyle.bodyHeight);
                ReaderActivity.this.mReaderBodyTV.setTextSize(0, ReaderActivity.this.mReaderStyle.textSize);
                ReaderActivity.this.mReaderBodyTV.setLineSpacing(ReaderActivity.this.mReaderStyle.lineSpacing, 1.0f);
                ReaderActivity.this.g();
            }
        });
        this.mReaderStyle.a(new ReaderStyle.cb() {
            @Override
            public void a() {
                ReaderActivity.this.g();
            }
        });
        this.mReaderStyle.a(new ReaderStyle.ce() {
            @Override
            public void a() {
                for (ReaderPageManager o2 : ReaderActivity.this.b) {
                    if (o2 != null) {
                        o2.b();
                    }
                }
                ReaderActivity.u(ReaderActivity.this);
            }
        });
        this.mReaderStyle.a(new ReaderStyle.ca() {
            @Override
            public void a() {
                ReaderActivity.this.R();
            }
        });
        this.mReaderStyle.a(new ReaderStyle.cd() {
            @Override
            public void a() {
                for (ReaderPageManager o2 : ReaderActivity.this.b) {
                    if (o2 == null) {
                        o2.c();
                    }
                }
                ReaderActivity.u(ReaderActivity.this);
            }
        });
        this.R();
        this.mReaderBodyTV.setTextColor(this.mReaderStyle.bodyColor);
        this.mReaderBodyTV.setHeight(this.mReaderStyle.bodyHeight);
        this.mReaderBodyTV.setTextSize(0, this.mReaderStyle.textSize);
        this.mReaderBodyTV.setLineSpacing(this.mReaderStyle.lineSpacing, 1.0f);
        if (this.mReaderStyle.h == R.drawable.reader_background_brown_big_img) {
            this.mReaderBodyTV.setBackgroundResource(R.drawable.reader_background_brown_auto_img);
        } else {
            this.mReaderBodyTV.setBackgroundResource(this.mReaderStyle.h);
        }
        boolean bl2 = this.mReadMode == 5 || this.mReadMode == 10 || CommonUtil.canDownload(this.mReadMode) || this.mReadMode == 9;
        View view = this.findViewById(R.id.reader_ab_read_mode);
        view.setVisibility(bl2 ? View.VISIBLE : View.GONE);
        this.r.setReaderStyle(this.mReaderStyle);
        this.r.b(this.mIsPortrait);
        this.r.setOnBtnClickListener(new ReaderActionBar.OnBtnClickListener() {
            @Override
            public void a(int n2) {
                switch (n2) {
                    case R.id.read_opt_setting:
                        SettingWidget settingWidget = ReaderActivity.this.s;
                        boolean bl = !ReaderActivity.this.j();
                        settingWidget.setReadOptionEnable(bl);
                        ReaderActivity.this.s.a();
                        break;
                    case R.id.read_opt_toc:
                        ReaderActivity.this.s.setVisibility(View.GONE);
                        if (ReaderActivity.this.mTocDisable || ReaderActivity.this.mModeDisable) {
                            ToastUtil.showShortToast(ReaderActivity.this, "目录不可用");
                            return;
                        }
                        ReaderActivity.this.D();
                        break;
                    case R.id.reader_oper_back:
                        ReaderActivity.this.s.setVisibility(View.GONE);
                        ReaderActivity.this.onBackPressed();
                        break;
                    case R.id.reader_ab_chapter_url_view:
                        ReaderActivity.this.s.setVisibility(View.GONE);
                        BaseDialog.Builder h2 = new BaseDialog.Builder(ReaderActivity.this);
                        h2.setMessage("是否使用原网页阅读？");
                        h2.setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {

                            @Override
                            public void onClick(DialogInterface dialog, int which) {
                                dialog.dismiss();
                                ReaderActivity.ag(ReaderActivity.this);
                            }
                        }).setNegativeButton(R.string.cancel, null).show();
                        break;
                    case R.id.reader_ab_read_mode:
                        ReaderActivity.this.s.setVisibility(View.GONE);
                        ReaderActivity.this.i();
                        break;
                    case R.id.reader_ab_more:
                        ReaderActivity.this.s.setVisibility(View.GONE);
                        View view = ReaderActivity.this.r.findViewById(R.id.reader_ab_more);
                        if (Build.VERSION.SDK_INT >= 19) {
                            ReaderActivity.a(ReaderActivity.this, view);
                        } else {
                            ReaderActivity.b(ReaderActivity.this, view);
                        }
                        break;
                    case R.id.read_opt_orientation:
                        ReaderActivity.this.s.setVisibility(View.GONE);
                        ReaderActivity.this.mChangeOrientation = true;
                        mIsPortrait = !mIsPortrait;
                        if (mIsPortrait) {
                            setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
                        } else {
                            setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
                        }
                        CommonUtil.putBoolPref(ReaderActivity.this, "reader_orientation", mIsPortrait);
                        break;
                    case R.id.reader_download:
                        ReaderActivity.this.s.setVisibility(View.GONE);
                        ReaderActivity.C(ReaderActivity.this);
                        break;
                }
            }
        });
        this.s.setReaderStyle(this.mReaderStyle, this.r);
        this.s.a(new SettingWidget.db() {
            @Override
            public void a() {
                startActivityForResult(ReaderOptionActivity.a(ReaderActivity.this), 0);
            }
        });
        this.s.a(new SettingWidget.dc() {
            @Override
            public void a() {
                ReaderActivity.this.H();
                ReaderActivity.this.M = 1;
                ReaderActivity.this.mMainView.setReadMode(ReaderActivity.this.M);
                ReaderActivity.this.mReaderBodyTV.setTotalHeight(ReaderActivity.this.b[ReaderActivity.this.mSelectedPageIndex].d());
                if (ReaderActivity.this.mReaderStyle.needCovert()) {
                    ReaderActivity.this.mReaderBodyTV.setText(ReaderActivity.this.A().a(ReaderActivity.this));
                } else {
                    ReaderActivity.this.mReaderBodyTV.setText(ReaderActivity.this.A().c());
                }
                ReaderActivity.this.mReaderBodyTV.f();
                ReaderActivity.this.N();

            }
        });
        this.t.setOptionClickListener(this);
        this.mReaderBodyTV.setOnPageTurning(this);
        this.mMainView.setAutoReaderTextView(this.mReaderBodyTV);
        this.j = new ReaderPageTransformer(this.mReader, this.mReaderStyle);
        this.C();
        this.mMainView.setAdapter(new PagerAdapter() {
            @Override
            public int getCount() {
                return 3;
            }

            @Override
            public Object instantiateItem(ViewGroup container, int position) {
                ReaderPageManager o2 = ReaderActivity.this.b[position];
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
        this.q.setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() {
            @Override
            public void onSystemUiVisibilityChange(int visibility) {
                ReaderActivity.this.p = (visibility & 1) == 0;
            }
        });
        this.J();
        if (this.mChangeOrientation) {
            this.mIsShowToc = false;
            Reader reader = MyApplication.getInstance().getReader();
            if (reader != null) {
                this.mReader = reader;
                this.B();
            } else {
                this.s();
            }
        } else {
            this.s();
        }
        BaseAsyncTask<String, Void, TopicCount> bq2 = new BaseAsyncTask<String, Void, TopicCount>() {

            @Override
            protected TopicCount doInBackground(String... params) {
                ApiServiceProvider.getInstance();
                return ApiServiceProvider.getApiService().I(params[0]);
            }

            @Override
            protected void onPostExecute(TopicCount topicCount) {
                super.onPostExecute(topicCount);
                if (topicCount != null && topicCount.isOk()) {
                    ReaderActivity.this.mTocCount = topicCount.getCount();
                    ReaderActivity.this.mNeedDownloadCount = ReaderActivity.this.mTocCount - BookTopicEnterRecord.get(ReaderActivity.this.mBookId).getVisitCount();
                    if (ReaderActivity.this.mNeedDownloadCount > 0) {
                        ReaderActivity.this.r.f(true);
                    } else {
                        ReaderActivity.this.r.f(false);
                    }
                }
            }
        };
        bq2.b(this.mBookId);
        if (CommonUtil.getAccount() != null) {
            new BaseAsyncTask<Void, Void, ChapterKeysRoot>() {
                @Override
                protected ChapterKeysRoot doInBackground(Void... params) {
                    ApiServiceProvider.getInstance();
                    return ApiServiceProvider.getApiService().g(CommonUtil.getAccount().getToken(), ReaderActivity.this.mBookId);
                }

                @Override
                protected void onPostExecute(ChapterKeysRoot chapterKeysRoot) {
                    HashMap<String, String> hashMap;
                    if (chapterKeysRoot != null && chapterKeysRoot.isOk()) {
                        hashMap = new HashMap<>((int) ((double) chapterKeysRoot.getKeyLength() / 0.7));
                        for (ChapterKeysRoot.ChapterKey chapterKey : chapterKeysRoot.getKeys()) {
                            hashMap.put(chapterKey.get_id(), chapterKey.getKey());
                        }
                        CommonUtil.saveObject(hashMap, CachePathConst.ChapterKey, ReaderActivity.this.mBookId);
                    } else {
                        hashMap = CommonUtil.loadObject(CachePathConst.ChapterKey, ReaderActivity.this.mBookId);
                        if (hashMap == null) {
                            hashMap = new HashMap<>();
                        }
                    }
                    ReaderActivity.this.mReader.setChaptersKey(hashMap);
                }
            }.b();
        }
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
        BusProvider.getInstance().unregister(this);
        ReaderPageManager[] arro = this.b;
        int n2 = arro.length;
        int n3 = 0;
        do {
            if (n3 >= n2) {
                super.onDestroy();
                return;
            }
            ReaderPageManager o2 = arro[n3];
            BusProvider.getInstance().unregister(o2);
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
    public void onModeChanged(ModeChangedEvent v2) {
        if (v2.getMode() == 1) {
            this.finish();
            return;
        }
        this.mModeDisable = true;
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
        if (this.mReader != null) {
            this.mReader.c();
        }
        if (CommonUtil.getIntPref(this, "key_shelf_sort", n2) != n2) {
            n2 = 0;
        }
        if (n2 != 0 && (bookReadRecord = BookReadRecord.get(this.mBookId)) != null) {
            bookReadRecord.readTime = new Date();
            bookReadRecord.save();
            BusProvider.getInstance().post(new BookReadEvent());
        }
        try {
            LocalBroadcastManager.getInstance(this).unregisterReceiver(this.mDownloadReceiver);
        } catch (IllegalArgumentException var2_3) {
            var2_3.printStackTrace();
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        this.getWindow().addFlags(128);
        this.K();
        LocalBroadcastManager.getInstance(this).registerReceiver(this.mDownloadReceiver, new IntentFilter("com.clilystudio.netbook.dlReceiver"));
        this.H();
//        if (this.M == 2 || !"".equals(a)) {
//            this.v = false;
//        }
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("SaveSelectedPageIndex", this.mSelectedPageIndex);
        bundle.putBoolean("SaveChangeOrientation", this.mChangeOrientation);
        bundle.putBoolean("SaveTocDisable", this.mTocDisable);
        bundle.putBoolean("SaveModeDisable", this.mModeDisable);
    }

    @Subscribe
    public void onThemeChanged(ThemeChangedEvent c2) {
        this.mLoadingView.a(c2.isNightMode());
    }

    @Override
    public void onUserInteraction() {
        super.onUserInteraction();
        this.K();
    }

    public static ReaderMenuFragment getReaderMenuFragment(String bookId, String bookTitle) {
        ReaderMenuFragment readerMenuFragment = new ReaderMenuFragment();
        Bundle bundle = new Bundle();
        bundle.putString("BOOK_ID", bookId);
        bundle.putString("BOOK_TITLE", bookTitle);
        readerMenuFragment.setArguments(bundle);
        return readerMenuFragment;
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

    public final class ChapterNameParser {
        private ChapterSameCalculator a = new ChapterSameCalculator();
        private String[][] b = new String[][]{{"！", "!"}, {"？", "?"}, {"（", "("}, {"）", ")"}, {"。", "."},
                {"，", ","}, {"；", ";"}, {"：", ":"}, {"、", ","}, {"〔", "("}, {"〕", ")"},
                {"　", " "}, {"０", "0"}, {"１", "1"}, {"２", "2"}, {"３", "3"}, {"４", "4"}, {"５", "5"},
                {"６", "6"}, {"７", "7"}, {"８", "8"}, {"９", "9"}};
        private String[][] c = new String[][]{{"零", "0"}, {"一", "1"}, {"二", "2"}, {"两", "2"}, {"三", "3"},
                {"四", "4"}, {"五", "5"}, {"六", "6"}, {"七", "7"}, {"八", "8"}, {"九", "9"}};
        private String[][] d = new String[][]{{"万", "10000"}, {"千", "1000"}, {"百", "100"}, {"十", "10"}};
        private Map<String, String> e = new HashMap<>();
        private Map<String, Integer> f = new HashMap<>();
        private Map<String, Integer> g = new HashMap<>();

        public ChapterNameParser() {
            this.a();
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        private ChapterInfo a(String string) {
            Matcher matcher = Pattern.compile("[章|第]?(\\d+)[章|节|回]([^\\(]*)(\\(.+?\\))?").matcher(string);
            if (!matcher.find()) {
                return new ChapterInfo(0, string, "");
            }
            String string2 = matcher.group(1);
            int n = 0;
            if (string2 != null) {
                n = Integer.parseInt(string2);
            }
            return new ChapterInfo(n, matcher.group(2), matcher.group(3));
        }

        private void a() {
            this.e.clear();
            for (String[] arrstring : this.b) {
                this.e.put(arrstring[0], arrstring[1]);
            }
            this.f.clear();
            for (String[] arrstring2 : this.c) {
                this.f.put(arrstring2[0], Integer.parseInt(arrstring2[1]));
            }
            this.g.clear();
            for (String[] arrstring3 : this.d) {
                this.g.put(arrstring3[0], Integer.valueOf(arrstring3[1]));
            }
        }

        private String b(String string) {
            String string2 = "";
            for (String string3 : this.e.keySet()) {
                if (!TextUtils.isEmpty(string2)) {
                    string2 = string2 + "|";
                }
                string2 = string2 + String.valueOf(string3);
            }
            StringBuffer stringBuffer = new StringBuffer();
            Matcher matcher = Pattern.compile(string2).matcher(string);
            while (matcher.find()) {
                matcher.appendReplacement(stringBuffer, String.valueOf(this.e.get(matcher.group())));
            }
            matcher.appendTail(stringBuffer);
            String string4 = this.c(stringBuffer.toString()).replaceAll("[\\(|\u3010|\\[]((?![\u4e0a\u4e2d\u4e0b1-9])[^\\(|\u3010|\\[]+?)[\\)|\u3011|\\]]$", "");
            string4.trim();
            return string4;
        }

        private String c(String string) {
            StringBuffer stringBuffer = new StringBuffer();
            Matcher matcher = Pattern.compile("[" + isContainsKey(this.f.keySet(), "|") + "|" + isContainsKey(this.g.keySet(), "|") + "]+").matcher(string);
            while (matcher.find()) {
                matcher.appendReplacement(stringBuffer, String.valueOf(this.d(matcher.group())));
            }
            matcher.appendTail(stringBuffer);
            return stringBuffer.toString();
        }

        private boolean isContainsKey(Collection<String> collection, String string2) {
            if (collection == null) {
                return false;
            }
            if (string2 == null) {
                return collection.contains(null);
            }
            for (String aCollection : collection) {
                if (string2.equalsIgnoreCase(aCollection)) {
                    return true;
                }
            }
            return false;
        }

        /*
         * Enabled aggressive block sorting
         */
        private int d(String string) {
            int[] arrn = new int[string.length()];
            for (int j = 0; j < string.length(); ++j) {
                String string2 = String.valueOf(string.charAt(j));
                if (this.f.containsKey(string2)) {
                    arrn[j] = this.f.get(string2);
                    continue;
                }
                if (!this.g.containsKey(string2)) continue;
                arrn[j] = this.g.get(string2);
            }
            int n = arrn.length;
            int n2 = 0;
            int n3 = 0;
            int n4 = 0;
            while (n2 < n) {
                int n5;
                int n6 = arrn[n2];
                boolean bl = n6 >= 10;
                if (bl) {
                    if (n3 == 0) {
                        n3 = 1;
                    }
                    n5 = n4 + n3 * n6;
                    n3 = 0;
                } else {
                    n3 = n6;
                    n5 = n4;
                }
                ++n2;
                n4 = n5;
            }
            return n3 + n4;
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public final boolean a(String string, String string2) {
            String string3;
            boolean bl = true;
            if (TextUtils.isEmpty(string)) return false;
            if (TextUtils.isEmpty(string2)) {
                return false;
            }
            if (string.equals(string2)) return bl;
            String string4 = this.b(string);
            if (string4.equals(string3 = this.b(string2))) return bl;
            ChapterInfo af2 = this.a(string4);
            ChapterInfo af3 = this.a(string3);
            return af2.getChapterNo() == af3.getChapterNo() && TextUtils.equals(af2.getChapterName(), af3.getChapterName()) && this.a.a(af2.getVolumeName(), af3.getVolumeName()) >= 0.5f && bl;
        }

        final class ChapterInfo {
            private int mChapterNo;
            private String mVolumeName;
            private String mChapterName;

            ChapterInfo(int chapterNo, String volumeName, String chapterName) {
                this.mChapterNo = chapterNo;
                this.mVolumeName = volumeName;
                this.mChapterName = chapterName;
            }

            public final int getChapterNo() {
                return this.mChapterNo;
            }

            public final String getVolumeName() {
                return this.mVolumeName;
            }

            public final String getChapterName() {
                return this.mChapterName;
            }
        }

        public final class ChapterSameCalculator {
            private float a = 1.0f;
            private float b = 1.0f;

            private int a(Set<Character> set, Set<Character> set2) {
                LinkedHashSet<Character> linkedHashSet = new LinkedHashSet<>();
                linkedHashSet.addAll(set);
                linkedHashSet.removeAll(set2);
                return linkedHashSet.size();
            }

            /*
             * Enabled aggressive block sorting
             */
            public final float a(String string, String string2) {
                int n;
                LinkedHashSet<Character> linkedHashSet = new LinkedHashSet<>();
                LinkedHashSet<Character> linkedHashSet2 = new LinkedHashSet<>();
                if (string == null && string2 != null) {
                    String string3 = string2.toUpperCase(Locale.US);
                    for (n = 0; n < string3.length(); ++n) {
                        linkedHashSet2.add(string3.charAt(n));
                    }
                } else if (string != null && string2 == null) {
                    String string4 = string.toUpperCase(Locale.US);
                    for (n = 0; n < string4.length(); ++n) {
                        linkedHashSet.add(string4.charAt(n));
                        ++n;
                    }
                } else if (string != null && string2 != null) {
                    String string5 = string.toUpperCase(Locale.US);
                    String string6 = string2.toUpperCase(Locale.US);
                    for (n = 0; n < string6.length(); ++n) {
                        linkedHashSet2.add(string6.charAt(n));
                    }
                    for (int i = 0; i < string5.length(); ++i) {
                        linkedHashSet.add(string5.charAt(i));
                    }
                }
                LinkedHashSet<Character> linkedHashSet3 = new LinkedHashSet<>();
                if (linkedHashSet.size() > linkedHashSet2.size()) {
                    linkedHashSet3.addAll(linkedHashSet);
                    linkedHashSet3.retainAll(linkedHashSet2);
                } else {
                    linkedHashSet3.addAll(linkedHashSet2);
                    linkedHashSet3.retainAll(linkedHashSet);
                }
                int n4 = linkedHashSet3.size();
                int n5 = a(linkedHashSet, linkedHashSet2);
                int n6 = a(linkedHashSet2, linkedHashSet);
                return (float) n4 / ((float) n4 + this.a * (float) n5 + this.b * (float) n6);
            }
        }
    }
}
