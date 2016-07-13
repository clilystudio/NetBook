package com.clilystudio.netbook.util;

import android.content.Context;

import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.db.AccountInfo;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.NotifEvent;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.NotifCountRoot;
import com.clilystudio.netbook.model.Root;

import java.util.Date;

public class UserNotificationManager {
    private static UserNotificationManager mInstance;
    private int mImportant;
    private int mUnimportant;
    private Context mContext;

    private UserNotificationManager(Context context) {
        this.mContext = context;
    }

    public static UserNotificationManager getInstance(Context context) {
        synchronized (UserNotificationManager.class) {
            if (mInstance == null) {
                mInstance = new UserNotificationManager(context);
            }
            return mInstance;
        }
    }

    public final int getImportant() {
        return this.mImportant;
    }

    public final int getUnimportant() {
        return this.mUnimportant;
    }

    public final void getUserNotificationCount(Account account) {
        if (account != null) {
            new BaseAsyncTask<String, Void, NotifCountRoot>() {

                @Override
                protected NotifCountRoot doInBackground(String... params) {
                    ApiServiceProvider.getInstance();
                    return ApiServiceProvider.getApiService().G(params[0]);
                }

                @Override
                protected void onPostExecute(NotifCountRoot notifCountRoot) {
                    super.onPostExecute(notifCountRoot);
                    if (notifCountRoot != null && notifCountRoot.isOk()) {
                        UserNotificationManager.this.mImportant = notifCountRoot.getImportant();
                        UserNotificationManager.this.mUnimportant = notifCountRoot.getUnimportant();
                        Date date = notifCountRoot.getLastReadImportantTime();
                        Date date2 = notifCountRoot.getLastReadUnimportantTime();
                        if (am.h(UserNotificationManager.this.mContext).equals("0")) {
                            am.a(UserNotificationManager.this.mContext, date.getTime());
                        }
                        if (am.i(UserNotificationManager.this.mContext).equals("0")) {
                            am.b(UserNotificationManager.this.mContext, date2.getTime());
                        }
                        BusProvider.getInstance().post(new NotifEvent());
                    }
                }
            }.b(account.getToken());
        }
    }

    public final void readImportantNotification() {
        Account account = am.getAccount();
        if (account != null) {
            new BaseAsyncTask<String, Void, Root>() {

                @Override
                protected Root doInBackground(String... params) {
                    ApiServiceProvider.getInstance();
                    return ApiServiceProvider.getApiService().L(params[0]);
                }

                @Override
                protected void onPostExecute(Root root) {
                    super.onPostExecute(root);
                    if (root != null && root.isOk()) {
                        UserNotificationManager.this.mImportant = 0;
                        BusProvider.getInstance().post(new NotifEvent());
                        am.j(UserNotificationManager.this.mContext);
                    }
                }
            }.b(account.getToken());
        }
    }

    public final void readUnimportantNotification() {
        Account account = am.getAccount();
        if (account != null) {
            new BaseAsyncTask<String, Void, Root>() {

                @Override
                protected Root doInBackground(String... params) {
                    ApiServiceProvider.getInstance();
                    return ApiServiceProvider.getApiService().M(params[0]);
                }

                @Override
                protected void onPostExecute(Root root) {
                    super.onPostExecute(root);
                    if (root != null && root.isOk()) {
                        AccountInfo accountInfo;
                        UserNotificationManager.this.mUnimportant = 0;
                        am.b(UserNotificationManager.this.mContext, System.currentTimeMillis());
                        Account account = am.getAccount();
                        if (account != null && (accountInfo = AccountInfo.getByToken(account.getToken())) != null) {
                            accountInfo.setPrevUnimpNotif(0);
                            accountInfo.save();
                        }
                        BusProvider.getInstance().post(new NotifEvent());
                    }
                }
            }.b(account.getToken());
        }
    }

    public final int getNotificationCount() {
        Account account = am.getAccount();
        if (account == null) {
            return 0;
        }
        if (this.mImportant != 0) return this.mImportant;
        if (this.mUnimportant == 0) return this.mImportant;
        if (AccountInfo.getPreUnimpCount(account.getToken()) >= this.mUnimportant) return 0;
        return -1;
    }
}
