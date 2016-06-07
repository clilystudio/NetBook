package com.clilystudio.netbook.download;

final class c extends Thread
{
  c(a parama)
  {
  }

  // ERROR //
  public final void run()
  {
     v1 = 0x0;
    v3 = 0x0;
    :try_start_0
    v0 = new File();
    v2 = p0.com.clilystudio.netbook.download/c;->a;
    v2 = com.clilystudio.netbook.download/a.c(v2);
    v0.<init>(v2);
    if (!v0.exists()) {
		v0.mkdirs();
    }
    v0 = new File();
    v2 = p0.com.clilystudio.netbook.download/c;->a;
    v2 = com.clilystudio.netbook.download/a.c(v2);
    v4 = p0.com.clilystudio.netbook.download/c;->a;
    v4 = com.clilystudio.netbook.download/a.d(v4);
    v0.<init>(v2, v4);
    v2 = new FileOutputStream();
    v2.<init>(v0);
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    :try_start_1
    v0 = new URL();
    v4 = p0.com.clilystudio.netbook.download/c;->a;
    v4 = com.clilystudio.netbook.download/a.e(v4);
    v0.<init>(v4);
    v0 = v0.openConnection();
    check-cast v0, Ljava/net/HttpURLConnection;
    v0.connect();
    v4 = v0.getContentLength();
    v1 = v0.getInputStream();
    v0 = 0x400;
    new-array v5, v0, [B
    v0 = v3;
    :cond_1
    v3 = v1.read(v5);
    v6 = -0x1;
    if (v3 == v6) {
//       if-eq v3, v6, :cond_2
    }
    v0 += v3;
    v6 = 0x0;
    v2.write(v5, v6, v3);
    if (v0 != v4) {
//       if-ne v0, v4, :cond_1
    }
    v0 = p0.com.clilystudio.netbook.download/c;->a;
    v0 = com.clilystudio.netbook.download/a.f(v0);
    v3 = 0x1;
    v0.sendEmptyMessage(v3);
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    :cond_2
    :try_start_2
    v2.close();
    if (v1 != 0) {
		v1.close();
    }
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    :cond_3
    :goto_0
    return;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_0
    :catch_1
    move-exception v0
    v2 = v1;
    :goto_1
    :try_start_3
    v0.printStackTrace();
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    if (v2 != 0) {
		v2.close();
    }
    :try_start_4
   :cond_4
    if (v1 != 0) {
		v1.close();
    }
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    goto :goto_0
    :catch_2
    move-exception v0
    v0.printStackTrace();
    goto :goto_0
    :catchall_0
    move-exception v0
    v2 = v1;
    :goto_2
    if (v2 != 0) {
		v2.close();
    }
    :try_start_5
    :cond_5
    if (v1 != 0) {
		v1.close();
    }
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    :cond_6
    :goto_3
    throw v0
    :catch_3
    move-exception v1
    v1.printStackTrace();
    goto :goto_3
    :catchall_1
    move-exception v0
    goto :goto_2
    :catch_4
    move-exception v0
    goto :goto_1
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.download.c
 * JD-Core Version:    0.6.0
 */