package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.CircularSmartImageView;
import com.clilystudio.netbook.ui.CropPhotoActivity;

import java.io.File;
import java.util.Calendar;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class ModifyUserInfoActivity extends BaseActivity implements View.OnClickListener {
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

    static /* synthetic */ long a(ModifyUserInfoActivity modifyUserInfoActivity, long l) {
        modifyUserInfoActivity.b = l;
        return l;
    }

    public static Intent a(Context context, long l) {
        return new d().a(context, ModifyUserInfoActivity.class).a("nickname_updated_time", Long.valueOf(l)).a();
    }

    static /* synthetic */ User a(ModifyUserInfoActivity modifyUserInfoActivity) {
        return modifyUserInfoActivity.a;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(ModifyUserInfoActivity modifyUserInfoActivity, boolean bl) {
        if (modifyUserInfoActivity.a.getGender().equals("male") == bl) {
            e.a((Activity) modifyUserInfoActivity, (String) "\u6ca1\u6709\u4fee\u6539");
            return;
        }
        Object[] arrobject = new Object[1];
        String string = bl ? "\u7537" : "\u5973";
        arrobject[0] = string;
        String string2 = String.format("\u6027\u522b\u4e00\u65e6\u786e\u5b9a\u5219\u65e0\u6cd5\u518d\u6b21\u4fee\u6539\uff01\u8bf7\u786e\u8ba4\u4f60\u9009\u62e9\u7684\u662f\u300c\u6027\u522b%s\u300d\u5417\uff1f", arrobject);
        h h2 = new h(modifyUserInfoActivity);
        h2.d = "\u63d0\u793a";
        h2.e = string2;
        h2.a("\u786e\u8ba4\u4fee\u6539", (DialogInterface.OnClickListener) ((Object) new m(modifyUserInfoActivity, bl))).b("\u53d6\u6d88", null).b();
    }

    static /* synthetic */ boolean b(ModifyUserInfoActivity modifyUserInfoActivity, boolean bl) {
        modifyUserInfoActivity.c = true;
        return true;
    }

    static /* synthetic */ boolean c(ModifyUserInfoActivity modifyUserInfoActivity, boolean bl) {
        modifyUserInfoActivity.e = bl;
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onActivityResult(int n, int n2, Intent intent) {
        if (n == 9162 && n2 == -1) {
            Uri uri = intent.getData();
            Uri uri2 = Uri.fromFile(new File(this.getCacheDir(), "cropped"));
            Intent intent2 = new Intent(this, CropPhotoActivity.class);
            intent2.setData(uri);
            intent2.putExtra("output", uri2);
            this.startActivityForResult(intent2, 6709);
            return;
        } else {
            if (n != 6709) return;
            {
                if (n2 == -1) {
                    new t(this, this, "\u6b63\u5728\u4e0a\u4f20\u56fe\u7247...", (Uri) intent.getParcelableExtra("output")).b((Object[]) new String[0]);
                    return;
                }
                if (n2 != 404) return;
                {
                    e.a((Activity) this, (String) ((Throwable) intent.getSerializableExtra("error")).getMessage());
                    return;
                }
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void onClick(View view) {
        if (!this.c) {
            return;
        }
        switch (view.getId()) {
            default: {
                return;
            }
            case R.id.portrait_section: {
                boolean bl = this.a.getLv() >= 4;
                if (!bl) {
                    h h2 = new h(this);
                    h2.d = "\u7b49\u7ea7\u4e0d\u591f";
                    h2.e = "\u9700\u8981lv4\u624d\u80fd\u6362\u5934\u50cf\uff0c\u518d\u7528\u4e00\u6bb5\u65f6\u95f4\u8ffd\u4e66\u5427~";
                    h2.a("\u77e5\u9053\u4e86", null).b();
                }
                if (!bl) return;
                boolean bl2 = !a.a((Context) this, "EXTRA_CHANGE_AVATAR", false);
                if (bl2) {
                    h h3 = new h(this);
                    h3.d = "\u63d0\u9192";
                    h3.e = "\u82e5\u7528\u8fdd\u89c4\u56fe\u7247\u4f5c\u5934\u50cf\uff0c\u4f1a\u88ab\u6c38\u4e45\u5c01\u53f7\u54e6\u3002";
                    h3.a("\u77e5\u9053\u4e86", (DialogInterface.OnClickListener) ((Object) new n(this))).b();
                    return;
                }
                a.b(this);
                return;
            }
            case R.id.name_section: {
                long l2 = this.b;
                long l3 = Calendar.getInstance().getTimeInMillis() - l2;
                if (l3 < 0) {
                    e.a((Activity) this, (String) "\u6682\u65f6\u65e0\u6cd5\u4fee\u6539");
                }
                if (l3 >= 2592000000L || this.b == -2) {
                    View view2 = this.getLayoutInflater().inflate(R.layout.dialog_user_rename, null);
                    EditText editText = (EditText) view2.findViewById(R.id.name_field);
                    editText.setText(this.a.getNickname());
                    editText.setSelection(this.a.getNickname().length());
                    h h4 = new h(this);
                    h4.d = "\u4fee\u6539\u6635\u79f0";
                    editText.setOnFocusChangeListener((View.OnFocusChangeListener) ((Object) new p(this, h4.b(view2).a("\u4fdd\u5b58", (DialogInterface.OnClickListener) ((Object) new o(this, editText))).b(17039360, null).b())));
                    return;
                }
                long l4 = 2592000000L - l3;
                if (l4 >= 86400000) {
                    int n2 = (int) (l4 / 86400000);
                    Object[] arrobject = new Object[]{n2};
                    e.a((Activity) this, (String) String.format("\u518d\u8fc7%d\u5929\u624d\u80fd\u4fee\u6539\u54e6", arrobject));
                    return;
                }
                int n3 = (int) (l4 / 3600000);
                if (n3 == 0) {
                    n3 = 1;
                }
                Object[] arrobject = new Object[]{n3};
                e.a((Activity) this, (String) String.format("\u518d\u8fc7%d\u5c0f\u65f6\u624d\u80fd\u4fee\u6539\u54e6", arrobject));
                return;
            }
            case R.id.gender_section:
        }
        if (this.e) {
            e.a((Activity) this, (String) "\u53ea\u6709\u4e00\u6b21\u4fee\u6539\u6027\u522b\u7684\u673a\u4f1a\uff0c\u4f60\u5df2\u7ecf\u6539\u8fc7\u4e86\u54e6");
            return;
        }
        View view3 = this.getLayoutInflater().inflate(R.layout.dialog_modify_gender, null);
        final AlertDialog alertDialog = new AlertDialog.Builder(this).create();
        alertDialog.setView(view3, 0, 0, 0, 0);
        alertDialog.show();
        view3.findViewById(R.id.gender_male).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                alertDialog.dismiss();
                ModifyUserInfoActivity.a(ModifyUserInfoActivity.this, true);
            }
        });
        view3.findViewById(R.id.gender_female).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                alertDialog.dismiss();
                ModifyUserInfoActivity.a(ModifyUserInfoActivity.this, false);
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_modify_user_info);
        this.b("\u7f16\u8f91\u8d44\u6599");
        this.mPortrait = (CircularSmartImageView) findViewById(R.id.portrait);
        this.mNameView = (TextView) findViewById(R.id.name);
        this.mGenderView = (TextView) findViewById(R.id.gender);
        this.mPortraitSection = (LinearLayout) findViewById(R.id.portrait_section);
        this.mNameSection = (LinearLayout) findViewById(R.id.name_section);
        this.mGenderSection = (LinearLayout) findViewById(R.id.gender_section);
        this.a = am.a((Activity) this).getUser();
        this.mPortrait.setImageUrl(this.a.getFullAvatar());
        this.mNameView.setText(this.a.getNickname());
        TextView textView = this.mGenderView;
        String string = this.a.getGender().equals("male") ? "\u7537" : "\u5973";
        textView.setText(string);
        this.b = this.getIntent().getLongExtra("nickname_updated_time", -1);
        if (this.b == -1) {
            this.c = false;
            r r2 = new r(this, 0);
            Object[] arrobject = new String[]{am.e().getToken()};
            r2.execute(arrobject);
        }
        this.mPortraitSection.setOnClickListener(this);
        this.mNameSection.setOnClickListener(this);
        this.mGenderSection.setOnClickListener(this);
    }
}
