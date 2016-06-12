package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;

import com.clilystudio.netbook.ActivityStack;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.v;
import com.squareup.a.b;

public class ReaderResActivity extends ReaderModeActivity {
    private View e;
    private int f;

    public static Intent a(Context paramContext, String paramString1, String paramString2, int paramInt) {
        return new d().a(paramContext, ReaderResActivity.class).a("BOOK_ID", paramString1).a("BOOK_TITLE", paramString2).a("BOOK_MODE", paramInt).a();
    }

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903179);
        c();
        View localView = LayoutInflater.from(this).inflate(2130903071, null);
        localView.findViewById(2131493860).setVisibility(8);
        localView.findViewById(2131493013).setOnClickListener(new bQ(this));
        localView.findViewById(2131493862).setOnClickListener(new bR(this));
        this.e = localView.findViewById(2131493864);
        localView.findViewById(2131493861).setOnClickListener(new bS(this));
        a().a(localView);
        a().d(true);
        i.a().a(this);
        f(this.c);
        FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
        if (this.a == 0) {
            localObject = (ReaderResourceFragment) getSupportFragmentManager().findFragmentByTag(ReaderResourceFragment.class.getName());
            if (localObject != null) ;
        }
        for (Object localObject = ReaderResourceFragment.a(this.b, this.c); ; localObject = a(this.c)) {
            localFragmentTransaction.replace(2131493174, (Fragment) localObject).commit();
            ActivityStack.getInstance();
            ActivityStack.addActivity(this);
            bT localbT = new bT(this, 0);
            String[] arrayOfString = new String[1];
            arrayOfString[0] = this.b;
            localbT.b(arrayOfString);
            return;
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
}

