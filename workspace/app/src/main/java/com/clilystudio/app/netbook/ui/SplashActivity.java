package com.clilystudio.app.netbook.ui;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;

import com.activeandroid.ActiveAndroid;
import com.clilystudio.app.netbook.AppProperties;
import com.clilystudio.app.netbook.R;
import com.clilystudio.app.netbook.db.BookFile;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.TxtFileObject;
import com.clilystudio.app.netbook.ui.home.HomeActivity;
import com.clilystudio.app.netbook.util.am_CommonUtils;

import java.io.File;

public class SplashActivity extends Activity {
    private static final String TAG = SplashActivity.class.getSimpleName();

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(R.layout.splash);
        ActiveAndroid.initialize(this);
        if (am_CommonUtils.g_hasLogined()) {
            Log.d(TAG, "hasLogined");
            AppProperties.getInstance(this).setProperties("user_register", "YES");
        } else {
            AppProperties.getInstance(this).setProperties("user_register", "NO");
        }
        startHomeActivity();
    }

    public void onResume() {
        super.onResume();
        if (am_CommonUtils.g_hasLogined()) {
            Account account = am_CommonUtils.e_getAccount();
            if (account != null) {
                String gender = account.getUser().getGender();
                if (gender != null) {
                    if (gender.equals("male")) {
                        AppProperties.getInstance(this).setProperties("user_gender", "male");
                    } else if (gender.equals("female")) {
                        AppProperties.getInstance(this).setProperties("user_gender", "female");
                    }
                }
            }
        }
    }

    private void startHomeActivity() {
        Intent intentStart = new Intent(this, HomeActivity.class);
        Intent intent = getIntent();
        Uri data = intent.getData();
        if (data != null) {
            if ("text/plain".equals(intent.getType())) {
                String fileName = data.getPath();
                intentStart.putExtra("file_name", fileName);
                TxtFileObject.add(new BookFile(new File(fileName)));
            } else {
                intentStart.putExtra("file_name", "nonsupport");
            }
        }
        startActivity(intentStart);
    }
}
