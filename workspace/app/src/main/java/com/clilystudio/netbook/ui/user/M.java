package com.clilystudio.netbook.ui.user;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

final class M extends BaseAdapter {
    List<PayChargeRecord$Order> a;
    private /* synthetic */ PayChargeActivity b;

    public M(List<PayChargeRecord$Order> var1_1) {
        this.b = var1_1;
        this.a = list;
    }

    private static String a(Date date, String string) {
        if (date == null) {
            return "";
        }
        return new SimpleDateFormat(string).format(date);
    }

    @Override
    public final int getCount() {
        return this.a.size();
    }

    @Override
    public final Object getItem(int n) {
        return this.a.get(n);
    }

    @Override
    public final long getItemId(int n) {
        return n;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public final View getView(int var1_1, View var2_2, ViewGroup var3_3) {
        var4_4 = this.a.get(var1_1);
        if (var2_2 == null) {
            var5_5 = new N(this);
            var2_2 = LayoutInflater.from(this.b).inflate(R.layout.list_item_pay_record, null);
            var5_5.a = var2_2.findViewById(R.id.pay_record_content_layout);
            var5_5.b = (ImageView) var2_2.findViewById(R.id.pay_record_item_icon);
            var5_5.c = (TextView) var2_2.findViewById(R.id.pay_record_item_date);
            var5_5.e = (TextView) var2_2.findViewById(R.id.pay_record_item_voucher);
            var5_5.f = (TextView) var2_2.findViewById(R.id.pay_record_item_price);
            var5_5.d = (TextView) var2_2.findViewById(R.id.pay_record_item_time);
            var5_5.g = (TextView) var2_2.findViewById(R.id.pay_record_item_flag);
            var2_2.setTag(var5_5);
            var6_6 = var5_5;
        } else {
            var6_6 = (N) var2_2.getTag();
        }
        if (var4_4.getPayType().equals("time_flag")) {
            var6_6.a.setVisibility(View.GONE);
            var6_6.g.setVisibility(View.VISIBLE);
            var6_6.g.setText(var4_4.getTimeflag());
            return var2_2;
        }
        var6_6.a.setVisibility(View.VISIBLE);
        var6_6.g.setVisibility(View.GONE);
        var6_6.e.setText(var4_4.getChargeString());
        var7_7 = var6_6.f;
        var8_8 = new StringBuilder();
        var9_9 = var4_4.getPrice();
        var7_7.setText(var8_8.append(new DecimalFormat("0.00").format(var9_9)).append("\u5143").toString());
        var10_10 = R.drawable.pay_alipay;
        var11_11 = var4_4.getPayType();
        switch (var11_11.hashCode()) {
            case -1414960566: {
                if (!var11_11.equals("alipay"))**GOTO lbl39
                var12_12 = 0;
                **GOTO lbl46
            }
            case 1825929990: {
                if (!var11_11.equals("weixinpay"))**GOTO lbl39
                var12_12 = 1;
                **GOTO lbl46
            }
            lbl39:
            // 3 sources:
            default:
            {
                **GOTO lbl -1000
            }
            case -199281814:
        }
        if (var11_11.equals("youyifupay")) {
            var12_12 = 2;
        } else lbl - 1000: // 2 sources:
        {
            var12_12 = -1;
        }
        lbl46:
        // 4 sources:
        switch (var12_12) {
            case 0: {
                var10_10 = R.drawable.pay_alipay_c;
                **break;
            }
            case 1: {
                var10_10 = R.drawable.pay_wechat_c;
            }
            lbl52:
            // 3 sources:
            default:
            {
                **GOTO lbl56
            }
            case 2:
        }
        var10_10 = R.drawable.pay_messenger_c;
        lbl56:
        // 2 sources:
        var6_6.c.setText(M.a(var4_4.getCreated(), "MM-dd"));
        var6_6.d.setText(M.a(var4_4.getCreated(), "mm:ss"));
        var6_6.b.setImageResource(var10_10);
        return var2_2;
    }
}
