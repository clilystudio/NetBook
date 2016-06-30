package com.clilystudio.netbook.ui;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.view.CropView;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class CropPhotoActivity extends BaseActivity {
    private CropView a;

    static /* synthetic */ void a(CropPhotoActivity cropPhotoActivity) {
        Bitmap bitmap = cropPhotoActivity.a.a();
        Bitmap bitmap2 = bitmap.getHeight() > 200 || bitmap.getWidth() > 200 ? Bitmap.createScaledBitmap(bitmap, 200, 200, false) : bitmap;
        File file = new File(((Uri) cropPhotoActivity.getIntent().getParcelableExtra("output")).getPath());
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmap2.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.close();
        } catch (IOException var5_5) {
            var5_5.printStackTrace();
        }
        cropPhotoActivity.setResult(-1, cropPhotoActivity.getIntent());
        cropPhotoActivity.finish();
    }

    @Override
    protected void onCreate(Bundle var1_1) {
        float var2_2 = 2048.0f;
        super.onCreate(var1_1);
        this.setContentView(R.layout.activity_crop_photo);
        this.a("截取头像", "使用", new aa() {
            @Override
            public void a() {
                CropPhotoActivity.a(CropPhotoActivity.this);
            }
        });
        Uri var3_3 = this.getIntent().getData();
        Bitmap var12_9;
        Bitmap var6_5 = null;
        try {
            var6_5 = BitmapFactory.decodeStream(this.getContentResolver().openInputStream(var3_3));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        if (var6_5 != null) {
            if (var6_5.getHeight() >= 2048 || var6_5.getWidth() >= 2048) {
                float var7_6 = var6_5.getWidth();
                float var8_7 = var6_5.getHeight();
                float var11_8;
                if (var7_6 > var8_7) {
                    var11_8 = var2_2 * (var8_7 / var7_6);
                } else {
                    var11_8 = var2_2;
                    var2_2 = var2_2 * (var7_6 / var8_7);
                }
                var12_9 = Bitmap.createScaledBitmap(var6_5, (int) var2_2, (int) var11_8, false);
            } else {
                var12_9 = var6_5;
            }
            this.a = (CropView) this.findViewById(R.id.crop);
            this.a.setImageBitmap(var12_9);
        }
    }
}
