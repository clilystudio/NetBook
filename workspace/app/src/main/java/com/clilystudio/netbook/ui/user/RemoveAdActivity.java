package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.View;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.ui.BaseLoadingActivity;
import com.clilystudio.netbook.ui.ShareRemoveAdActivity;
import com.clilystudio.netbook.util.D;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

public class RemoveAdActivity extends BaseLoadingActivity {
    al a;
    private RecyclerView b;

    @Override
    protected final void b() {
        this.i();
        new aj(this, 0).b((Object[]) new Void[0]);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a(R.layout.activity_remove_ad);
        this.b("\u514d\u5e7f\u544a");
        this.b = (RecyclerView) this.findViewById(R.id.recycler_view);
        this.b.setLayoutManager(new D(this));
        this.a = new al(this);
        this.b.setAdapter((ah) ((Object) this.a));
        i.a().a(this);
        this.b();
        if (a.r(this, "switch_share_remove_ad")) {
            this.findViewById(R.id.txt_share_remove).setVisibility(View.VISIBLE);
            this.findViewById(R.id.rl_share_remove).setVisibility(View.VISIBLE);
            this.findViewById(R.id.btn_share_remove_ad).setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Intent intent = ShareRemoveAdActivity.a(RemoveAdActivity.this, "removeAd");
                    RemoveAdActivity.this.startActivity(intent);
                    MiStatInterface.recordCountEvent("share_remove_entrance_click", "removeAd");
                }
            });
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        i.a().b(this);
    }
}
