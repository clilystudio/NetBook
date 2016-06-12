package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog$Builder;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnFocusChangeListener;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.CircularSmartImageView;

import java.util.Calendar;

import butterknife.ButterKnife;

public class ModifyUserInfoActivity extends BaseActivity implements View$OnClickListener {

    LinearLayout mGenderSection;
    TextView mGenderView;
    LinearLayout mNameSection;
    TextView mNameView;
    CircularSmartImageView mPortrait;
    LinearLayout mPortraitSection;
    private User a;
    private long b;
    private boolean c = true;
    private boolean e = false;

    static long a(ModifyUserInfoActivity ModifyUserInfoActivity1, long long2) {
        ModifyUserInfoActivity1.b = long2;
        return long2;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, long long2) {
    }

    static User a(ModifyUserInfoActivity ModifyUserInfoActivity1) {
        return ModifyUserInfoActivity1.a;
    }

    static void a(ModifyUserInfoActivity ModifyUserInfoActivity1, boolean boolean2) {
        if (ModifyUserInfoActivity1.a.getGender().equals("male") == boolean2)
            com.clilystudio.netbook.util.e.a((Activity) ModifyUserInfoActivity1, "\u6CA1\u6709\u4FEE\u6539");
        else {
            Object[] Object_1darray3 = new Object[1];
            String String4;
            String String5;
            h h6;

            if (boolean2)
                String4 = "\u7537";
            else
                String4 = "\u5973";
            Object_1darray3[0] = String4;
            String5 = String.format("\u6027\u522B\u4E00\u65E6\u786E\u5B9A\u5219\u65E0\u6CD5\u518D\u6B21\u4FEE\u6539\uFF01\u8BF7\u786E\u8BA4\u4F60\u9009\u62E9\u7684\u662F\u300C\u6027\u522B%s\u300D\u5417\uFF1F", Object_1darray3);
            h6 = new h((Context) ModifyUserInfoActivity1);
            h6.d = "\u63D0\u793A";
            h6.e = String5;
            h6.a("\u786E\u8BA4\u4FEE\u6539", (DialogInterface$OnClickListener) new m(ModifyUserInfoActivity1, boolean2)).b("\u53D6\u6D88", null).b();
        }
    }

    static boolean b(ModifyUserInfoActivity ModifyUserInfoActivity1, boolean boolean2) {
        ModifyUserInfoActivity1.c = true;
        return true;
    }

    static boolean c(ModifyUserInfoActivity ModifyUserInfoActivity1, boolean boolean2) {
        ModifyUserInfoActivity1.e = boolean2;
        return boolean2;
    }
// Error: Internal #201: 
// The following method may not be correct.

    protected void onActivityResult(int int1, int int2, Intent Intent3) {
    }

    public void onClick(View View1) {
        if (c) {
            switch (View1.getId()) {
                case 282:
                default:
                    return;
                case 281:
                    int int17;

                    if (a.getLv() >= 4)
                        int17 = 1;
                    else
                        int17 = 0;
                    if (int17 == 0) {
                        h h18 = new h((Context) this);

                        h18.d = "\u7B49\u7EA7\u4E0D\u591F";
                        h18.e = "\u9700\u8981lv4\u624D\u80FD\u6362\u5934\u50CF\uFF0C\u518D\u7528\u4E00\u6BB5\u65F6\u95F4\u8FFD\u4E66\u5427~";
                        h18.a("\u77E5\u9053\u4E86", null).b();
                    }
                    if (int17 != 0) {
                        int int20;

                        if (!com.clilystudio.netbook.hpay100.a.a.a((Context) this, "EXTRA_CHANGE_AVATAR", false))
                            int20 = 1;
                        else
                            int20 = 0;
                        if (int20 != 0) {
                            h h21 = new h((Context) this);

                            h21.d = "\u63D0\u9192";
                            h21.e = "\u82E5\u7528\u8FDD\u89C4\u56FE\u7247\u4F5C\u5934\u50CF\uFF0C\u4F1A\u88AB\u6C38\u4E45\u5C01\u53F7\u54E6\u3002";
                            h21.a("\u77E5\u9053\u4E86", (DialogInterface$OnClickListener) new n(this)).b();
                        } else
                            com.clilystudio.netbook.hpay100.a.a.b((Activity) this);
                        return;
                    }
                    break;
                case 283:
                    long long4 = b;
                    long long6 = Calendar.getInstance().getTimeInMillis() - long4;

                    if (long6 < 0L)
                        com.clilystudio.netbook.util.e.a((Activity) this, "\u6682\u65F6\u65E0\u6CD5\u4FEE\u6539");
                    if (long6 >= 2592000000L || b == -2L) {
                        View View8 = getLayoutInflater().inflate(2130903201, null);
                        EditText EditText9 = (EditText) View8.findViewById(2131493224);
                        h h10;

                        EditText9.setText((CharSequence) a.getNickname());
                        EditText9.setSelection(a.getNickname().length());
                        h10 = new h((Context) this);
                        h10.d = "\u4FEE\u6539\u6635\u79F0";
                        EditText9.setOnFocusChangeListener((View$OnFocusChangeListener) new p(this, h10.b(View8).a("\u4FDD\u5B58", (DialogInterface$OnClickListener) new o(this, EditText9)).b(17039360, null).b()));
                    } else {
                        long long11 = 2592000000L - long6;

                        if (long11 >= 86400000L) {
                            int int15 = (int) (long11 / 86400000L);
                            Object[] Object_1darray16 = new Object[1];

                            Object_1darray16[0] = Integer.valueOf(int15);
                            com.clilystudio.netbook.util.e.a((Activity) this, String.format("\u518D\u8FC7%d\u5929\u624D\u80FD\u4FEE\u6539\u54E6", Object_1darray16));
                        } else {
                            int int13 = (int) (long11 / 3600000L);
                            Object[] Object_1darray14;

                            if (int13 == 0)
                                int13 = 1;
                            Object_1darray14 = new Object[1];
                            Object_1darray14[0] = Integer.valueOf(int13);
                            com.clilystudio.netbook.util.e.a((Activity) this, String.format("\u518D\u8FC7%d\u5C0F\u65F6\u624D\u80FD\u4FEE\u6539\u54E6", Object_1darray14));
                        }
                    }
                    return;
                case 284:
                    if (e)
                        com.clilystudio.netbook.util.e.a((Activity) this, "\u53EA\u6709\u4E00\u6B21\u4FEE\u6539\u6027\u522B\u7684\u673A\u4F1A\uFF0C\u4F60\u5DF2\u7ECF\u6539\u8FC7\u4E86\u54E6");
                    else {
                        View View2 = getLayoutInflater().inflate(2130903196, null);
                        AlertDialog AlertDialog3 = new AlertDialog$Builder((Context) this).create();

                        AlertDialog3.setView(View2, 0, 0, 0, 0);
                        AlertDialog3.show();
                        View2.findViewById(2131493413).setOnClickListener((View$OnClickListener) new k(this, AlertDialog3));
                        View2.findViewById(2131493414).setOnClickListener((View$OnClickListener) new l(this, AlertDialog3));
                    }
                    return;
            }
        }
    }

    protected void onCreate(Bundle Bundle1) {
        TextView TextView2;
        Object Object3;

        super.onCreate(Bundle1);
        setContentView(2130903114);
        b("\u7F16\u8F91\u8D44\u6599");
        ButterKnife.inject((Activity) this);
        a = am.a((Activity) this).getUser();
        mPortrait.setImageUrl(a.getFullAvatar());
        mNameView.setText((CharSequence) a.getNickname());
        TextView2 = mGenderView;
        if (a.getGender().equals("male"))
            Object3 = "\u7537";
        else
            Object3 = "\u5973";
        TextView2.setText((CharSequence) Object3);
        b = getIntent().getLongExtra("nickname_updated_time", -1L);
        if (b == -1L) {
            r r4;
            String[] String_1darray5;

            c = false;
            r4 = new r(this, (byte) 0);
            String_1darray5 = new String[1];
            String_1darray5[0] = am.e().getToken();
            r4.execute(String_1darray5);
        }
        mPortraitSection.setOnClickListener(this);
        mNameSection.setOnClickListener(this);
        mGenderSection.setOnClickListener(this);
    }
}
