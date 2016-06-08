package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.SourceWebReadRecord;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.v;
import com.clilystudio.netbook.ui.post.BookPostTabActivity;
import com.squareup.a.b;
import com.squareup.a.l;

public class ReaderWebActivity extends BaseReadActivity {
    private int b;
    private String c;
    private String d;
    private String e;
    private String f;
    private ReaderWebActionBar g;
    private int h;

    public static Intent a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt) {
        return new d().a(paramContext, ReaderWebActivity.class).a("BOOK_ID", paramString1).a("BOOK_TITLE", paramString2).a("TOC_ID", paramString3).a("SOURCE_ID", paramString4).a("BOOK_MODE", paramInt).a();
    }

    private void a(int paramInt) {
        FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
        String str = this.e;
        ReaderWebPageFragment localReaderWebPageFragment = (ReaderWebPageFragment) getSupportFragmentManager().findFragmentByTag(ReaderWebPageFragment.class.getName());
        if (localReaderWebPageFragment == null)
            localReaderWebPageFragment = ReaderWebPageFragment.a(this.b, str, paramInt);
        localFragmentTransaction.replace(2131493174, localReaderWebPageFragment);
        try {
            localFragmentTransaction.commitAllowingStateLoss();
            return;
        } catch (IllegalStateException localIllegalStateException) {
            localIllegalStateException.printStackTrace();
        }
    }

    public final void a() {
        startActivity(ModeListActivity.a(this, this.c, this.d, this.b));
        overridePendingTransition(2130968602, 2130968603);
    }

    public final void b() {
        startActivity(BookPostTabActivity.a(this, this.c, this.d));
    }

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903124);
        i.a().a(this);
        this.c = getIntent().getStringExtra("BOOK_ID");
        this.d = getIntent().getStringExtra("BOOK_TITLE");
        this.e = getIntent().getStringExtra("SOURCE_ID");
        SourceWebReadRecord localSourceWebReadRecord;
        if (paramBundle != null) {
            this.b = paramBundle.getInt("savedCurrentMode", 5);
            this.f = a.g(this.b);
            this.g = ((ReaderWebActionBar) findViewById(2131493173));
            this.g.setTitle(this.d);
            this.g.setChapterLink(a.P(this.f));
            this.g.setOnBtnClickListener$74b8600c(new cB(this));
            localSourceWebReadRecord = SourceWebReadRecord.get(this.c, this.b);
            if (localSourceWebReadRecord == null)
                break label692;
        }
        label388:
        label692:
        for (int i = localSourceWebReadRecord.getChapterIndex(); ; i = 0) {
            String str1;
            cC localcC;
            switch (this.b) {
                case 4:
                case 5:
                default:
                    FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
                    String str3 = this.e;
                    ReaderWebPageFragment localReaderWebPageFragment = (ReaderWebPageFragment) getSupportFragmentManager().findFragmentByTag(ReaderWebPageFragment.class.getName());
                    if (localReaderWebPageFragment == null)
                        localReaderWebPageFragment = ReaderWebPageFragment.a(this.b, str3);
                    localFragmentTransaction.replace(2131493174, localReaderWebPageFragment).commit();
                case 6:
                    while (true) {
                        if (a.l(this, this.f + "source_web_alert")) {
                            str1 = getString(2131034462);
                            View localView = LayoutInflater.from(this).inflate(2130903197, null);
                            localcC = new cC(this, localView);
                            if (!a.g())
                                break label630;
                            ((TextView) localView.findViewById(2131493416)).setText(a.P(this.f));
                            new h(this).a(localView).a(false).b(true).a("好的", localcC).b();
                        }
                        cL localcL = new cL(this, 0);
                        String[] arrayOfString2 = new String[1];
                        arrayOfString2[0] = this.c;
                        localcL.b(arrayOfString2);
                        return;
                        this.b = getIntent().getIntExtra("BOOK_MODE", 5);
                        break;
                        cK localcK = new cK(this, this, i + 1);
                        String[] arrayOfString5 = new String[1];
                        arrayOfString5[0] = this.e;
                        localcK.b(arrayOfString5);
                    }
                case 7:
                    if (localSourceWebReadRecord == null)
                        break;
                case 8:
                case 3:
            }
            for (String str2 = localSourceWebReadRecord.getCmd(); ; str2 = null) {
                if (BookReadRecord.get(this.c) != null) {
                    cJ localcJ1 = new cJ(this, this, i, str2);
                    String[] arrayOfString3 = new String[1];
                    arrayOfString3[0] = this.e;
                    localcJ1.b(arrayOfString3);
                    break;
                }
                if (MyApplication.a().c() == null)
                    break;
                cJ localcJ2 = new cJ(this, this, i, str2);
                String[] arrayOfString4 = new String[1];
                arrayOfString4[0] = this.e;
                localcJ2.b(arrayOfString4);
                break;
                a(i);
                break;
                cI localcI = new cI(this, this, i);
                String[] arrayOfString1 = new String[1];
                arrayOfString1[0] = this.e;
                localcI.b(arrayOfString1);
                break;
                label630:
                cD localcD = new cD(this);
                h localh = new h(this);
                localh.e = str1;
                localh.a(false).a("好的", localcC).b("不使用", localcD).b();
                break label388;
            }
        }
    }

    protected void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }

    @l
    public void onModeChanged(v paramv) {
        finish();
    }

    protected void onSaveInstanceState(Bundle paramBundle) {
        super.onSaveInstanceState(paramBundle);
        paramBundle.putInt("savedCurrentMode", this.b);
    }
}

