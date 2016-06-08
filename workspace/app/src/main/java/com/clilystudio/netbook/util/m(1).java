package com.clilystudio.netbook.util;

import android.app.Activity;
import android.content.Intent;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.SourceRecord;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.reader.ReaderActivity;
import com.clilystudio.netbook.reader.ReaderResActivity;
import com.clilystudio.netbook.reader.ReaderWebActivity;

import java.util.Calendar;
import java.util.HashMap;

public final class m {
    private Activity a;
    private String b;
    private String c;
    private BookReadRecord d;
    private boolean e;
    private String f;

    public m(Activity paramActivity) {
        this.a = paramActivity;
        i.a().a(this);
    }

    private void a(int paramInt) {
        MyApplication.a().a(paramInt);
        if (paramInt == 5) {
            a(ReaderActivity.a(this.a, this.b, this.c, "MIX_TOC_ID", null, false));
            return;
        }
        if ((paramInt == 0) || (paramInt == 1) || (paramInt == 4) || (paramInt == 2)) {
            Intent localIntent1 = ReaderResActivity.a(this.a, this.b, this.c, paramInt);
            localIntent1.putExtra("SELECT_LAST", false);
            a(localIntent1);
            return;
        }
        if ((paramInt == 10) && (this.d != null)) {
            String str4 = this.d.getTocId();
            a(ReaderActivity.a(this.a, this.b, this.c, str4, null, false));
            return;
        }
        if (paramInt == 9) {
            if (this.d != null)
                this.f = this.d.getTocId();
            if (am.e() != null) {
                HashMap localHashMap = a.M(this.b);
                if (localHashMap == null)
                    localHashMap = new HashMap();
                a(ReaderActivity.a(this.a, this.b, this.c, this.f, null, false, localHashMap, this.e));
                return;
            }
            a(ReaderActivity.a(this.a, this.b, this.c, this.f, null, false, this.e));
            return;
        }
        String str1 = a.g(paramInt);
        SourceRecord localSourceRecord = SourceRecord.get(this.b, str1);
        if ((localSourceRecord == null) || (localSourceRecord.getSourceId() == null)) {
            a(true);
            return;
        }
        String str2 = localSourceRecord.getSourceId();
        String str3 = a.a(this.b, paramInt, str2, null);
        if (a.a(this.a, str1, false)) {
            Intent localIntent2 = ReaderActivity.a(this.a, this.b, this.c, str3, str1, false);
            localIntent2.putExtra("SOURCE_ID", str2);
            a(localIntent2);
            return;
        }
        a(ReaderWebActivity.a(this.a, this.b, this.c, str3, str2, paramInt));
    }

    private void a(Intent paramIntent) {
        paramIntent.putExtra("extra_force_online", false);
        this.a.startActivity(paramIntent);
    }

    private void a(boolean paramBoolean) {
        n localn = new n(this, this.a, paramBoolean);
        String[] arrayOfString = new String[1];
        arrayOfString[0] = this.b;
        localn.b(arrayOfString);
    }

    private void a(boolean paramBoolean1, boolean paramBoolean2) {
        o localo = new o(this, this.a, paramBoolean1, paramBoolean2);
        String[] arrayOfString = new String[1];
        arrayOfString[0] = this.b;
        localo.b(arrayOfString);
    }

    public final void a(BookReadRecord paramBookReadRecord) {
        int i = 5;
        this.d = paramBookReadRecord;
        this.b = paramBookReadRecord.getBookId();
        this.c = paramBookReadRecord.getTitle();
        int j = paramBookReadRecord.getReadMode();
        if (paramBookReadRecord.have_cp == 1) {
            if (paramBookReadRecord.getTocId() == null) {
                a(true, true);
                return;
            }
            a(j);
            return;
        }
        int k = 0;
        if (j != -1) {
            if (k != 0) {
                e.a(this.a, "正在获取来源");
                a(true);
                return;
            }
        } else {
            long l = a.c(this.a, "PREF_FIRST_LAUNCH_TIME", 0L);
            if (Calendar.getInstance().getTimeInMillis() - l >= 2592000000L) ;
            for (int m = 1; ; m = 0) {
                k = 0;
                if (m != 0)
                    break;
                Account localAccount = am.e();
                if (localAccount != null) {
                    int n = localAccount.getUser().getLv();
                    k = 0;
                    if (n >= i)
                        break;
                }
                k = 1;
                break;
            }
        }
        if (j == -1) {
            paramBookReadRecord.setReadMode(i);
            paramBookReadRecord.save();
        }
        while (true) {
            a(i);
            return;
            i = j;
        }
    }

    public final void a(BookInfo paramBookInfo) {
        this.b = paramBookInfo.getId();
        this.c = paramBookInfo.getTitle();
        if (paramBookInfo.isHasCp()) {
            a(false, false);
            return;
        }
        a(false);
    }
}

