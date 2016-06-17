package com.clilystudio.netbook.ui.user;

import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.VipPlan;

import java.util.ArrayList;
import java.util.List;

final class al extends ah<ao> {
    final /* synthetic */ RemoveAdActivity a;
    private List<VipPlan.Plan> b;

    public al(RemoveAdActivity removeAdActivity) {
        this.a = removeAdActivity;
        this.b = new ArrayList<VipPlan.Plan>();
    }

    static /* synthetic */ List a(al al2) {
        return al2.b;
    }

    @Override
    public final int a() {
        if (this.b == null) {
            return 0;
        }
        return this.b.size();
    }

    @Override
    public final /* synthetic */ ay a(ViewGroup viewGroup, int n) {
        return new ao(this.a, LayoutInflater.from(this.a).inflate(R.layout.list_item_remove_ad, viewGroup, false));
    }

    @Override
    public final /* synthetic */ void a(ay ay2, final int n) {
        ao ao2 = (ao) ay2;
        ao2.i.setText(this.b.get(n).getName());
        ao2.j.setText("" + this.b.get(n).getCurrency() + "\u8ffd\u4e66\u5e01");
        ao2.j.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (com.clilystudio.netbook.am.a(al.this.a) != null) {
                    h h2 = new h(this.b.a);
                    h2.e = "\u786e\u5b9a\u8d2d\u4e70 " + ((VipPlan.Plan) al.a(al.this).get(n)).getName() + " \u670d\u52a1\uff1f";
                    h2.a(R.string.ok, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            dialog.dismiss();
                            ak ak2 = new ak(al.this.a, al.this.a, "正在购买");
                            String[] arrstring = new String[]{com.clilystudio.netbook.am.e().getToken(), ((VipPlan.Plan) al.a(al.this).get(n)).get_id()};
                            ak2.b(arrstring);
                        }
                    }).b(R.string.cancel, null).b();
                }
            }
        });
        if (n >= -1 + this.b.size()) {
            ao2.k.setVisibility(View.GONE);
            return;
        }
        ao2.k.setVisibility(View.VISIBLE);
    }

    public final void a(List<VipPlan.Plan> list) {
        this.b.clear();
        this.b.addAll(list);
        this.b();
    }
}
