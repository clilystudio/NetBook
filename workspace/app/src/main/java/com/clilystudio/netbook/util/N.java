package com.clilystudio.netbook.util;

import android.app.Activity;
import android.content.DialogInterface;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.ResultStatus;

import uk.me.lewisdeane.ldialogs.BaseDialog;

public final class N {
    private Activity a;

    public N(Activity activity) {
        this.a = activity;
    }

    static /* synthetic */ Activity a(N n) {
        return n.a;
    }

    public final void a(String string) {
        Account account = am.a((Activity) this.a);
        if (account != null) {
            this.a(account.getToken(), string);
        }
    }

    public final void a(String string, String string2) {
        new com.clilystudio.netbook.a_pack.e<String, Void, ResultStatus>() {

            @Override
            protected ResultStatus doInBackground(String... params) {
                b.a();
                ResultStatus resultStatus = b.b().y(params[0], params[1]);
                return resultStatus;
            }

            @Override
            protected void onPostExecute(ResultStatus resultStatus) {
                 super.onPostExecute(resultStatus);
                if (resultStatus == null) {
                    e.a((Activity) N.a(N.this), (String) "收藏失败，请检查网络或稍后再试");
                    return;
                }
                if (resultStatus.isOk()) {
                    e.a((Activity) N.a(N.this), (String) "收藏成功");
                    return;
                } else {
                    if (!"11000".equals(resultStatus.getCode())) return;
                    {
                        e.a((Activity) N.a(N.this), (String) "你已经收藏过啦～");
                        return;
                    }
                }
            }
        }.b(string, string2);
    }

    public final void a(final String string, final String string2, final boolean bl) {
        CharSequence[] arrcharSequence = this.a.getResources().getStringArray(R.array.post_detail_report);
        BaseDialog.Builder h2 = new BaseDialog.Builder(this.a);
        h2.setTitle("举报");
        h2.setSingleChoiceItems(arrcharSequence, 0, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                final String stringX = String.valueOf(which + 1);
                e.a((Activity) N.a(N.this), (int) R.string.post_report_successful);
                if (!bl) {
                    if (string2 == null) {
                        new Thread() {

                            @Override
                            public void run() {
                                com.clilystudio.netbook.api.b.a();
                                com.clilystudio.netbook.api.b.b().w(string, stringX);
                            }
                        }.start();
                        return;
                    }
                    new Thread() {

                        @Override
                        public void run() {
                            com.clilystudio.netbook.api.b.a();
                            com.clilystudio.netbook.api.b.b().l(string, string2, stringX);
                        }
                    }.start();
                    return;
                }
                if (string2 == null) {
                    new Thread() {

                        @Override
                        public void run() {
                            com.clilystudio.netbook.api.b.a();
                            com.clilystudio.netbook.api.b.b().e(am.e().getToken(), string, stringX);
                        }
                    }.start();
                    return;
                }
                new Thread() {

                    @Override
                    public void run() {
                        com.clilystudio.netbook.api.b.a();
                        com.clilystudio.netbook.api.b.b().b(string, string2, stringX);
                    }
                }.start();
            }
        }).show();
    }

    public final void b(String string, String string2) {
        this.a(string, string2, false);
    }
}
