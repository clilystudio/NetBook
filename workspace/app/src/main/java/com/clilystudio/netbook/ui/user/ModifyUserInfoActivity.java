package com.clilystudio.netbook.ui.user;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.netbook.IntentBuilder;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.a_pack.BaseLoadingTask;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.UserInfoChangedEvent;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ChangeGenderRoot;
import com.clilystudio.netbook.model.ChangeNickNameRoot;
import com.clilystudio.netbook.model.Root;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.model.UserInfo;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.CircularSmartImageView;
import com.clilystudio.netbook.ui.CropPhotoActivity;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.util.ToastUtil;

import java.io.File;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

import uk.me.lewisdeane.ldialogs.BaseDialog;

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
        return new IntentBuilder().put(context, ModifyUserInfoActivity.class).putSerializable("nickname_updated_time", l).build();
    }

    static /* synthetic */ User a(ModifyUserInfoActivity modifyUserInfoActivity) {
        return modifyUserInfoActivity.a;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(final ModifyUserInfoActivity modifyUserInfoActivity, final boolean bl) {
        if (modifyUserInfoActivity.a.getGender().equals("male") == bl) {
            ToastUtil.showShortToast(modifyUserInfoActivity, "没有修改");
            return;
        }
        Object[] arrobject = new Object[1];
        String string = bl ? "\u7537" : "\u5973";
        arrobject[0] = string;
        String string2 = String.format("性别一旦确定则无法再次修改！请确认你选择的是「性别%s」吗？", arrobject);
        BaseDialog.Builder h2 = new BaseDialog.Builder(modifyUserInfoActivity);
        h2.setTitle("提示");
        h2.setMessage(string2);
        h2.setPositiveButton("确认修改", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                BaseLoadingTask<String, ChangeGenderRoot> q2 = new BaseLoadingTask<String, ChangeGenderRoot>(modifyUserInfoActivity, R.string.loading) {

                    @Override
                    public ChangeGenderRoot a(String... var1) {
                        Account account = CommonUtil.getAccount();
                        if (account != null) {
                            return ApiServiceProvider.getApiService().v(account.getToken(), var1[0]);
                        }
                        return null;
                    }

                    @Override
                    public void a(ChangeGenderRoot changeGenderRoot) {
                        if (changeGenderRoot != null) {
                            if (!changeGenderRoot.isOk()) {
                                ToastUtil.showShortToast(modifyUserInfoActivity, changeGenderRoot.getErrorMessage());
                                return;
                            }
                            UserInfo userInfo = (UserInfo) MyApplication.getInstance().loadObject("savedObject_userinfo");
                            String string = ModifyUserInfoActivity.a(modifyUserInfoActivity).getGender().equals("male") ? "female" : "male";
                            userInfo.setGender(string);
                            MyApplication.getInstance().saveObject(userInfo, "savedObject_userinfo");
                            Account account = CommonUtil.checkLogin(modifyUserInfoActivity);
                            if (account != null) {
                                ModifyUserInfoActivity.a(modifyUserInfoActivity).setGender(string);
                                account.setUser(ModifyUserInfoActivity.a(modifyUserInfoActivity));
                                MyApplication.getInstance().saveAccoutInfo(account);
                            }
                            TextView textView = modifyUserInfoActivity.mGenderView;
                            String string2 = string.equals("male") ? "男" : "女";
                            textView.setText(string2);
                            ToastUtil.showShortToast(modifyUserInfoActivity, "修改成功");
                            BusProvider.getInstance().post(new UserInfoChangedEvent());
                        }
                    }
                };
                String[] arrstring = new String[1];
                String string = bl ? "male" : "female";
                arrstring[0] = string;
                q2.b(arrstring);
            }
        }).setNegativeButton("取消", null).show();
    }

    static /* synthetic */ boolean b(ModifyUserInfoActivity modifyUserInfoActivity, boolean bl) {
        modifyUserInfoActivity.c = bl;
        return bl;
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
        } else {
            if (n != 6709) return;
            {
                if (n2 == -1) {
                    final Uri output = intent.getParcelableExtra("output");
                    new BaseLoadingTask<String, Root>(ModifyUserInfoActivity.this, "正在上传图片...") {

                        @Override
                        public Root a(String... var1) {
                            return ApiServiceProvider.getApiService().a(CommonUtil.checkLogin(ModifyUserInfoActivity.this).getToken(), output);

                        }

                        @Override
                        public void a(Root root) {
                            if (root != null && root.isOk()) {
                                ToastUtil.showShortToast(ModifyUserInfoActivity.this, "修改成功");
                                BusProvider.getInstance().post(new UserInfoChangedEvent());
                                ModifyUserInfoActivity.this.mPortrait.setImageURI(output);
                                return;
                            }
                            ToastUtil.showShortToast(ModifyUserInfoActivity.this, "上传失败");
                        }
                    }.b();
                    return;
                }
                if (n2 != 404) return;
                {
                    ToastUtil.showShortToast(this, ((Throwable) intent.getSerializableExtra("error")).getMessage());
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
                    BaseDialog.Builder h2 = new BaseDialog.Builder(this);
                    h2.setTitle("等级不够");
                    h2.setMessage("需要lv4才能换头像，再用一段时间追书吧~");
                    h2.setPositiveButton("知道了", null).show();
                }
                if (!bl) return;
                boolean bl2 = !CommonUtil.getBoolPref(this, "EXTRA_CHANGE_AVATAR", false);
                if (bl2) {
                    BaseDialog.Builder h3 = new BaseDialog.Builder(this);
                    h3.setTitle("提醒");
                    h3.setMessage("若用违规图片作头像，会被永久封号哦。");
                    h3.setPositiveButton("知道了", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            startActivityForResult(new Intent("android.intent.action.GET_CONTENT").setType("image/*"), 9162);
                            CommonUtil.putBoolPref(ModifyUserInfoActivity.this, "EXTRA_CHANGE_AVATAR", true);
                        }
                    }).show();
                    return;
                }
                startActivityForResult(new Intent("android.intent.action.GET_CONTENT").setType("image/*"), 9162);
                return;
            }
            case R.id.name_section: {
                long l2 = this.b;
                long l3 = Calendar.getInstance().getTimeInMillis() - l2;
                if (l3 < 0) {
                    ToastUtil.showShortToast(this, "暂时无法修改");
                }
                if (l3 >= 2592000000L || this.b == -2) {
                    View view2 = this.getLayoutInflater().inflate(R.layout.dialog_user_rename, (ViewGroup) getWindow().getDecorView(), false);
                    final EditText editText = (EditText) view2.findViewById(R.id.name_field);
                    editText.setText(this.a.getNickname());
                    editText.setSelection(this.a.getNickname().length());
                    BaseDialog.Builder h4 = new BaseDialog.Builder(this);
                    h4.setTitle("修改昵称");
                    final AlertDialog alertDialog = h4.setView(view2).setPositiveButton("保存", new DialogInterface.OnClickListener() {

                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            BaseLoadingTask<String, ChangeNickNameRoot> s2 = new BaseLoadingTask<String, ChangeNickNameRoot>(ModifyUserInfoActivity.this, R.string.loading) {
                                String a;

                                @Override
                                public ChangeNickNameRoot a(String... var1) {
                                    this.a = var1[0];
                                    Account account = CommonUtil.getAccount();
                                    if (account != null) {
                                        return ApiServiceProvider.getApiService().u(account.getToken(), var1[0]);
                                    }
                                    return null;
                                }

                                @Override
                                public void a(ChangeNickNameRoot changeNickNameRoot) {
                                    if (changeNickNameRoot == null) return;
                                    if (changeNickNameRoot.isOk()) {
                                        ModifyUserInfoActivity.this.mNameView.setText(this.a);
                                        ToastUtil.showShortToast(ModifyUserInfoActivity.this, "修改成功");
                                        BusProvider.getInstance().post(new UserInfoChangedEvent());
                                        return;
                                    }
                                    ToastUtil.showShortToast(ModifyUserInfoActivity.this, changeNickNameRoot.getErrorMessage());
                                }
                            };
                            String[] arrstring = new String[]{editText.getText().toString()};
                            s2.b(arrstring);
                        }
                    }).setNegativeButton(android.R.string.cancel, null).create();
                    editText.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                        @Override
                        public void onFocusChange(View v, boolean hasFocus) {
                            if (hasFocus) {
                                alertDialog.getWindow().setSoftInputMode(5);
                            }
                        }
                    });
                    return;
                }
                long l4 = 2592000000L - l3;
                if (l4 >= 86400000) {
                    int n2 = (int) (l4 / 86400000);
                    ToastUtil.showShortToast(this, String.format(Locale.CHINA, "再过%d天才能修改哦", n2));
                    return;
                }
                int n3 = (int) (l4 / 3600000);
                if (n3 == 0) {
                    n3 = 1;
                }
                ToastUtil.showShortToast(this, String.format(Locale.CHINA, "再过%d小时才能修改哦", n3));
                return;
            }
            case R.id.gender_section:
        }
        if (this.e) {
            ToastUtil.showShortToast(this, "只有一次修改性别的机会，你已经改过了哦");
            return;
        }
        View view3 = this.getLayoutInflater().inflate(R.layout.dialog_modify_gender, (ViewGroup) getWindow().getDecorView(), false);
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
        this.a = CommonUtil.checkLogin(this).getUser();
        this.mPortrait.setImageUrl(this.a.getFullAvatar());
        this.mNameView.setText(this.a.getNickname());
        TextView textView = this.mGenderView;
        String string = this.a.getGender().equals("male") ? "\u7537" : "\u5973";
        textView.setText(string);
        this.b = this.getIntent().getLongExtra("nickname_updated_time", -1);
        if (this.b == -1) {
            this.c = false;
            BaseAsyncTask<String, Void, UserInfo> r2 = new BaseAsyncTask<String, Void, UserInfo>() {

                @Override
                protected UserInfo doInBackground(String... params) {
                    return ApiServiceProvider.getApiService().K(params[0]);
                }

                @Override
                protected void onPostExecute(UserInfo userInfo) {
                    super.onPostExecute(userInfo);
                    if (userInfo == null) {
                        ToastUtil.showShortToast(ModifyUserInfoActivity.this, "载入失败");
                        MyApplication.getInstance().loadObject("savedObject_userinfo");
                        return;
                    }
                    if (userInfo.isOk()) {
                        MyApplication.getInstance().saveObject(userInfo, "savedObject_userinfo");
                        Date date = userInfo.getNicknameUpdated();
                        if (date == null) {
                            ModifyUserInfoActivity.a(ModifyUserInfoActivity.this, -2);
                        } else {
                            ModifyUserInfoActivity.a(ModifyUserInfoActivity.this, date.getTime());
                        }
                        ModifyUserInfoActivity.b(ModifyUserInfoActivity.this, true);
                        ModifyUserInfoActivity.c(ModifyUserInfoActivity.this, userInfo.isGenderChanged());
                    } else {
                        if (!"TOKEN_INVALID".equals(userInfo.getCode())) return;
                        {
                            ToastUtil.showShortToast(ModifyUserInfoActivity.this, "帐号无效或过期，请退出登录后重试");
                        }
                    }
                }
            };
            r2.execute(CommonUtil.getAccount().getToken());
        }
        this.mPortraitSection.setOnClickListener(this);
        this.mNameSection.setOnClickListener(this);
        this.mGenderSection.setOnClickListener(this);
    }
}
