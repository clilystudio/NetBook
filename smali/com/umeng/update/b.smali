.class public final Lcom/umeng/update/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/support/design/widget/K;

.field private static b:Lcom/umeng/update/a;

.field private static c:Landroid/support/design/widget/K;

.field private static d:Landroid/content/Context;

.field private static e:Lcom/umeng/update/o;

.field private static f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/umeng/update/b;->a:Landroid/support/design/widget/K;

    .line 27
    sput-object v0, Lcom/umeng/update/b;->b:Lcom/umeng/update/a;

    .line 28
    sput-object v0, Lcom/umeng/update/b;->c:Landroid/support/design/widget/K;

    .line 31
    new-instance v0, Lcom/umeng/update/o;

    invoke-direct {v0}, Lcom/umeng/update/o;-><init>()V

    sput-object v0, Lcom/umeng/update/b;->e:Lcom/umeng/update/o;

    .line 33
    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/umeng/update/b;->d:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)Ljava/io/File;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".apk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    :try_start_0
    const-string v0, "/apk"

    const/4 v3, 0x1

    new-array v3, v3, [Z

    invoke-static {v0, p0, v3}, Lcom/umeng/update/net/w;->a(Ljava/lang/String;Landroid/content/Context;[Z)Ljava/io/File;

    move-result-object v3

    .line 365
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    .line 368
    invoke-static {v0}, Lu/a/g;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 367
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 368
    if-eqz v2, :cond_0

    .line 375
    :goto_0
    return-object v0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 373
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 375
    goto :goto_0
.end method

.method static a(ILandroid/content/Context;Lcom/umeng/update/UpdateResponse;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 423
    packed-switch p0, :pswitch_data_0

    .line 433
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/umeng/update/b;->b:Lcom/umeng/update/a;

    if-eqz v0, :cond_0

    .line 434
    sget-object v0, Lcom/umeng/update/b;->b:Lcom/umeng/update/a;

    invoke-interface {v0, p0}, Lcom/umeng/update/a;->a(I)V

    .line 436
    :cond_0
    return-void

    .line 1450
    :pswitch_1
    if-nez p3, :cond_1

    .line 1451
    invoke-static {p1, p2}, Lcom/umeng/update/b;->b(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V

    goto :goto_0

    .line 1466
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1467
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1468
    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1469
    const-string v2, "application/vnd.android.package-archive"

    .line 1468
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1470
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2403
    :pswitch_2
    iget-object v0, p2, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/umeng/update/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(ILcom/umeng/update/UpdateResponse;)V
    .locals 0

    .prologue
    .line 155
    invoke-static {p0, p1}, Lcom/umeng/update/b;->b(ILcom/umeng/update/UpdateResponse;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 194
    invoke-static {v0}, Lcom/umeng/update/k;->a(Z)V

    .line 195
    invoke-static {v0}, Lcom/umeng/update/k;->b(Z)V

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1219
    if-nez v0, :cond_0

    .line 1220
    :try_start_0
    const-string v0, "update"

    const-string v1, "unexpected null context in update"

    invoke-static {v0, v1}, Lu/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    :goto_0
    return-void

    .line 1223
    :cond_0
    new-instance v1, Lcom/umeng/update/c;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/umeng/update/c;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/umeng/update/b;->f:Landroid/os/Handler;

    .line 1242
    invoke-static {v0}, Lcom/umeng/update/b;->c(Landroid/content/Context;)Z

    .line 1243
    invoke-static {v0}, Lu/a/a;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1244
    invoke-static {}, Lcom/umeng/update/k;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1245
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/update/b;->b(ILcom/umeng/update/UpdateResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1274
    :catch_0
    move-exception v0

    .line 1275
    const-string v1, "update"

    .line 1276
    const-string v2, "Exception occurred in Mobclick.update(). "

    .line 1275
    invoke-static {v1, v2, v0}, Lu/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 1248
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/umeng/update/k;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1249
    invoke-static {}, Lcom/umeng/update/k;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1250
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/update/b;->b(ILcom/umeng/update/UpdateResponse;)V

    goto :goto_0

    .line 1255
    :cond_2
    sget-object v1, Lcom/umeng/update/b;->e:Lcom/umeng/update/o;

    invoke-virtual {v1}, Lcom/umeng/update/o;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1256
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/umeng/update/b;->b(ILcom/umeng/update/UpdateResponse;)V

    .line 1257
    const-string v1, "update"

    const-string v2, "Is updating now."

    invoke-static {v1, v2}, Lu/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    sget-object v1, Lcom/umeng/update/b;->f:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/update/d;

    invoke-direct {v2, v0}, Lcom/umeng/update/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1271
    :cond_3
    sput-object v0, Lcom/umeng/update/b;->d:Landroid/content/Context;

    .line 1273
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/umeng/update/j;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/umeng/update/j;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;I)V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 292
    .line 3388
    :try_start_0
    iget-object v2, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3389
    iget-object v2, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    .line 3390
    invoke-static {p0}, Lcom/umeng/update/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 3389
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 3390
    if-eqz v2, :cond_0

    .line 3391
    invoke-static {}, Lcom/umeng/update/k;->c()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    .line 3295
    :goto_0
    if-eqz v2, :cond_1

    .line 3319
    :goto_1
    return-void

    :cond_0
    move v2, v1

    .line 3388
    goto :goto_0

    .line 3298
    :cond_1
    invoke-static {p0, p1}, Lcom/umeng/update/b;->a(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)Ljava/io/File;

    move-result-object v3

    .line 3299
    if-eqz v3, :cond_2

    move v1, v0

    .line 3300
    :cond_2
    if-nez v1, :cond_3

    invoke-static {}, Lcom/umeng/update/k;->e()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3301
    :cond_3
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 4178
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/umeng/update/UpdateDialogActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4179
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4180
    const-string v4, "response"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4181
    if-eqz v1, :cond_4

    .line 4182
    const-string v1, "file"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4186
    :goto_2
    const-string v1, "force"

    invoke-static {}, Lcom/umeng/update/k;->c()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4187
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4188
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4190
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3319
    :catch_0
    move-exception v0

    .line 3320
    const-string v1, "update"

    const-string v2, "Fail to create update dialog box."

    invoke-static {v1, v2, v0}, Lu/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 4184
    :cond_4
    :try_start_1
    const-string v1, "file"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3307
    :pswitch_1
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3306
    check-cast v0, Landroid/app/NotificationManager;

    .line 3309
    const/4 v4, 0x0

    .line 3310
    sget-object v5, Lcom/umeng/update/b;->e:Lcom/umeng/update/o;

    .line 4242
    invoke-static {p0}, Lu/a/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 4243
    invoke-virtual {p1, p0, v1}, Lcom/umeng/update/UpdateResponse;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    .line 4247
    if-eqz v1, :cond_5

    .line 4248
    invoke-static {p0}, Lu/a/c;->a(Landroid/content/Context;)Lu/a/c;

    move-result-object v1

    .line 4249
    const-string v2, "UMDialog_InstallAPK"

    .line 4248
    invoke-virtual {v1, v2}, Lu/a/c;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4250
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4251
    const/high16 v8, 0x10000000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4252
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 4253
    const-string v8, "application/vnd.android.package-archive"

    .line 4252
    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4266
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4267
    const/4 v8, 0x0

    .line 4268
    const/high16 v9, 0x8000000

    .line 4267
    invoke-static {p0, v8, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 4269
    new-instance v8, Lcom/umeng/update/p;

    invoke-direct {v8, v5, p0}, Lcom/umeng/update/p;-><init>(Lcom/umeng/update/o;Landroid/content/Context;)V

    .line 4270
    invoke-virtual {v8, v7}, Lcom/umeng/update/p;->c(Ljava/lang/CharSequence;)Lcom/umeng/update/p;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/umeng/update/p;->b(Ljava/lang/CharSequence;)Lcom/umeng/update/p;

    move-result-object v5

    .line 4271
    invoke-virtual {v5, v2}, Lcom/umeng/update/p;->a(Ljava/lang/CharSequence;)Lcom/umeng/update/p;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/umeng/update/p;->d(Ljava/lang/CharSequence;)Lcom/umeng/update/util/a;

    move-result-object v2

    .line 4272
    invoke-virtual {v2, v1}, Lcom/umeng/update/util/a;->a(Landroid/app/PendingIntent;)Lcom/umeng/update/util/a;

    move-result-object v1

    .line 4273
    const v2, 0x108007d

    invoke-virtual {v1, v2}, Lcom/umeng/update/util/a;->a(I)Lcom/umeng/update/util/a;

    move-result-object v1

    .line 4274
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/umeng/update/util/a;->b(Z)Lcom/umeng/update/util/a;

    .line 3311
    invoke-virtual {v8}, Lcom/umeng/update/p;->a()Landroid/app/Notification;

    move-result-object v1

    .line 3308
    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 4255
    :cond_5
    invoke-static {p0}, Lu/a/c;->a(Landroid/content/Context;)Lu/a/c;

    move-result-object v1

    .line 4256
    const-string v2, "UMUpdateTitle"

    .line 4255
    invoke-virtual {v1, v2}, Lu/a/c;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4257
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/umeng/update/UpdateDialogActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4258
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 4259
    const-string v8, "response"

    invoke-virtual {v3, v8, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4260
    const-string v8, "file"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4261
    const-string v8, "force"

    invoke-static {}, Lcom/umeng/update/k;->c()Z

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4262
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4263
    const/high16 v3, 0x14000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_3

    .line 3316
    :cond_6
    invoke-static {p0, p1}, Lcom/umeng/update/b;->b(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 3301
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcom/umeng/update/a;)V
    .locals 0

    .prologue
    .line 141
    sput-object p0, Lcom/umeng/update/b;->b:Lcom/umeng/update/a;

    .line 142
    return-void
.end method

.method static synthetic b()Landroid/support/design/widget/K;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method private static b(ILcom/umeng/update/UpdateResponse;)V
    .locals 2

    .prologue
    .line 156
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 157
    iput p0, v0, Landroid/os/Message;->what:I

    .line 158
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 160
    sget-object v1, Lcom/umeng/update/b;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    return-void
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/update/b;->d:Landroid/content/Context;

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 483
    iget-boolean v0, p1, Lcom/umeng/update/UpdateResponse;->delta:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/umeng/update/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    sget-object v0, Lcom/umeng/update/b;->e:Lcom/umeng/update/o;

    iget-object v2, p1, Lcom/umeng/update/UpdateResponse;->origin:Ljava/lang/String;

    iget-object v3, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    .line 485
    iget-object v4, p1, Lcom/umeng/update/UpdateResponse;->path:Ljava/lang/String;

    iget-object v5, p1, Lcom/umeng/update/UpdateResponse;->patch_md5:Ljava/lang/String;

    move-object v1, p0

    .line 484
    invoke-virtual/range {v0 .. v6}, Lcom/umeng/update/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/design/widget/K;)V

    .line 486
    sget-object v0, Lcom/umeng/update/b;->e:Lcom/umeng/update/o;

    invoke-virtual {v0}, Lcom/umeng/update/o;->b()V

    .line 492
    :goto_0
    return-void

    .line 488
    :cond_0
    sget-object v2, Lcom/umeng/update/b;->e:Lcom/umeng/update/o;

    iget-object v4, p1, Lcom/umeng/update/UpdateResponse;->path:Ljava/lang/String;

    iget-object v5, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    move-object v3, p0

    move-object v7, v6

    move-object v8, v6

    invoke-virtual/range {v2 .. v8}, Lcom/umeng/update/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/support/design/widget/K;)V

    .line 490
    sget-object v0, Lcom/umeng/update/b;->e:Lcom/umeng/update/o;

    invoke-virtual {v0}, Lcom/umeng/update/o;->c()V

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 502
    invoke-static {}, Lcom/umeng/update/k;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 642
    :cond_0
    :goto_0
    return v1

    .line 506
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    const-string v2, ".BuildConfig"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 506
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 508
    const-string v2, "DEBUG"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 509
    if-eqz v0, :cond_0

    .line 518
    :try_start_1
    invoke-static {p0}, Lcom/umeng/update/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 519
    sget-object v0, Lcom/umeng/update/b;->f:Landroid/os/Handler;

    new-instance v1, Lcom/umeng/update/e;

    invoke-direct {v1, p0}, Lcom/umeng/update/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v1, v4

    .line 528
    goto :goto_0

    .line 530
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 532
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 533
    const/16 v3, 0x1005

    .line 531
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 536
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_12

    move v2, v4

    move v0, v4

    .line 537
    :goto_1
    :try_start_2
    iget-object v3, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v3, v3

    if-lt v2, v3, :cond_3

    .line 544
    :goto_2
    if-nez v0, :cond_5

    .line 545
    sget-object v1, Lcom/umeng/update/b;->f:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/update/f;

    invoke-direct {v2, p0}, Lcom/umeng/update/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v1, v4

    .line 555
    goto :goto_0

    .line 538
    :cond_3
    const-string v3, "com.umeng.update.UpdateDialogActivity"

    .line 539
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v5, v5, v2

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 537
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 558
    :cond_5
    :try_start_3
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v0, :cond_11

    move v2, v4

    move v0, v4

    .line 559
    :goto_3
    :try_start_4
    iget-object v3, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v3, v3

    if-lt v2, v3, :cond_6

    .line 566
    :goto_4
    if-nez v0, :cond_8

    .line 567
    sget-object v1, Lcom/umeng/update/b;->f:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/update/g;

    invoke-direct {v2, p0}, Lcom/umeng/update/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move v1, v4

    .line 577
    goto/16 :goto_0

    .line 560
    :cond_6
    const-string v3, "com.umeng.update.net.DownloadingService"

    .line 561
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    aget-object v5, v5, v2

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v3

    if-eqz v3, :cond_7

    move v0, v1

    .line 559
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 583
    :cond_8
    :try_start_5
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_10

    move v5, v4

    move v0, v4

    move v2, v4

    move v3, v4

    .line 584
    :goto_5
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-lt v5, v7, :cond_9

    .line 597
    :goto_6
    if-eqz v3, :cond_d

    if-eqz v2, :cond_d

    .line 598
    if-eqz v0, :cond_d

    move v0, v1

    .line 599
    :goto_7
    if-nez v0, :cond_e

    .line 600
    :try_start_6
    sget-object v1, Lcom/umeng/update/b;->f:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/update/h;

    invoke-direct {v2, p0}, Lcom/umeng/update/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move v1, v4

    .line 610
    goto/16 :goto_0

    .line 585
    :cond_9
    :try_start_7
    const-string v7, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 586
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    move v3, v1

    .line 584
    :cond_a
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 588
    :cond_b
    const-string v7, "android.permission.ACCESS_NETWORK_STATE"

    .line 589
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    move v2, v1

    .line 591
    goto :goto_8

    :cond_c
    const-string v7, "android.permission.INTERNET"

    .line 592
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result v7

    if-eqz v7, :cond_a

    move v0, v1

    .line 593
    goto :goto_8

    :cond_d
    move v0, v4

    .line 597
    goto :goto_7

    .line 614
    :cond_e
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".R$string"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 614
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 617
    const-string v2, "UMUpdateCheck"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 618
    const-string v2, "2.4.2.20140520"

    .line 619
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 618
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result v0

    .line 619
    if-eqz v0, :cond_f

    move v0, v1

    .line 622
    :goto_9
    if-nez v0, :cond_0

    .line 628
    :goto_a
    :try_start_9
    sget-object v1, Lcom/umeng/update/b;->f:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/update/i;

    invoke-direct {v2, p0}, Lcom/umeng/update/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :goto_b
    move v1, v0

    .line 642
    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_a

    :catch_1
    move-exception v0

    move v0, v4

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_b

    .line 513
    :catch_3
    move-exception v0

    goto/16 :goto_0

    :cond_f
    move v0, v4

    goto :goto_9

    :cond_10
    move v0, v4

    move v2, v4

    move v3, v4

    goto/16 :goto_6

    :cond_11
    move v0, v4

    goto/16 :goto_4

    :cond_12
    move v0, v4

    goto/16 :goto_2
.end method
