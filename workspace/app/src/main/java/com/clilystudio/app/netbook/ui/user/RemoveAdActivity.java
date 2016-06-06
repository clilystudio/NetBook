package com.clilystudio.app.netbook.ui.user;

import android.os.Bundle;
import android.support.v7.widget.RecyclerView;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.event.i_OttoBus;
import com.clilystudio.app.netbook.ui.BaseLoadingActivity;
import com.clilystudio.app.netbook.util.D;
import com.squareup.a.b;

public class RemoveAdActivity extends BaseLoadingActivity {
    al a;
    private RecyclerView b;

    protected final void b() {
        i();
        new aj(this, (byte) 0).b(new Void[0]);
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        a(2130903125);
        b_initContentView("免广告");
        this.b = ((RecyclerView) findViewById(2131493175));
        this.b.setLayoutManager(new D(this));
        this.a = new al(this);
        this.b.setAdapter(this.a);
        i_OttoBus.a().a(this);
        b();
        if (a.r(this, "switch_share_remove_ad")) {
            findViewById(2131493176).setVisibility(0);
            findViewById(2131493177).setVisibility(0);
            findViewById(2131493179).setOnClickListener(new ai(this));
        }
    }

    protected void onDestroy() {
        super.onDestroy();
        i_OttoBus.a().b(this);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.RemoveAdActivity
 * JD-Core Version:    0.6.2
 */