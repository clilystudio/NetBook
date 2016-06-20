package com.clilystudio.netbook.adapter;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.ChargePlan;
import com.clilystudio.netbook.ui.user.ChargeActivity;
import com.clilystudio.netbook.util.W;

public final class x extends W<ChargePlan> {
    private Activity a;

    public x(Activity activity, LayoutInflater layoutInflater) {
        super(layoutInflater, R.layout.pay_grid_item);
        this.a = activity;
    }

    static /* synthetic */ Activity a(x x2) {
        return x2.a;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n, final ChargePlan chargePlan) {
        boolean bl = true;
        View view = (View) this.a(0, View.class);
        this.a((int) (bl ? 1 : 0), chargePlan.getPriceDsc() + "\u5143");
        this.a(2, "" + chargePlan.getCurrency() + "\u8ffd\u4e66\u5e01");
        if (chargePlan.getVoucher() > 0) {
            bl = false;
        }
        this.a(3, bl);
        this.a(3, "+" + chargePlan.getVoucher() + "\u8ffd\u4e66\u5238");
        view.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (x.a(x.this) instanceof ChargeActivity) {
                    ((ChargeActivity) x.a(x.this)).a(chargePlan);
                }
            }
        });
    }

    @Override
    protected final int[] a() {
        return new int[]{R.id.pay_grid_item, R.id.pay_grid_price, R.id.pay_grid_currency, R.id.pay_grid_voucher};
    }
}
